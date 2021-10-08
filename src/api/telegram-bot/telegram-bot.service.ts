import { Injectable, OnModuleInit } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { getManager, Repository } from 'typeorm';
import { MenuEntity } from 'src/entity/menu.entity'
import { ConfigEntity } from 'src/entity/config.entity';
import { LogEntity } from 'src/entity/log.entity';
import { UserEntity } from 'src/entity/user.entity';

@Injectable()
export class TelegramBotService implements OnModuleInit {

    arrSubMenu: MenuEntity[] = [];
    arrMainMenu: MenuEntity[] = [];
    arrUser: UserEntity[] = [];

    arrConfig: ConfigEntity[] = [];
    // telegramToken: any;
    // devId: any;
    // isMaintenance: any;
    // companyName: any;
    // botName: any;

    constructor(
        @InjectRepository(MenuEntity) private menuRepository: Repository<MenuEntity>,
        @InjectRepository(ConfigEntity) private configRepository: Repository<ConfigEntity>,
        @InjectRepository(LogEntity) private logRepository: Repository<LogEntity>,
        @InjectRepository(UserEntity) private userRepository: Repository<UserEntity>
        ) { }

    kataSapaan: string[] = [
        '/start', 'hi', 'halo', 'hello', 'hallo', 'helo', 'selamat',
        'hei', 'hai', 'woy', 'woi', 'tes', 'test'
    ];

    kataKemampuan: string[] = [
        'bisa apa', 'bisa ngapain', 'apa saja', 'menu', 'kamu lakukan', 'ya'
    ];

    kataPerpisahan: string[] = [
        'terima kasih', 'bye', 'sampai jumpa', 'selamat tinggal', 'thank', 'thanks', 'tidak', 'dah', 'ga'
    ]

    onModuleInit() {
        this.botMessage();
    }

    // async getConfig(){
    //     const model = await this.configRepository.find();
    //     for(let i=0;i<model.length;i++){
    //         if(model[i]['CONFIG_NAME'] == 'TELEGRAM_TOKEN'){
    //             this.telegramToken = model[i]['CONFIG_VALUE'];
    //         } else if(model[i]['CONFIG_NAME'] == 'IS_MAINTENANCE'){
    //             if(model[i]['CONFIG_VALUE'] == '1'){
    //                 this.isMaintenance = true;
    //             } else {
    //                 this.isMaintenance = false;
    //             }
    //         } else if(model[i]['CONFIG_NAME'] == 'COMPANY_NAME'){
    //             this.companyName = model[i]['CONFIG_VALUE'];
    //         } else if(model[i]['CONFIG_NAME'] == 'BOT_NAME'){
    //             this.botName = model[i]['CONFIG_VALUE'];
    //         } else if(model[i]['CONFIG_NAME'] == 'DEV_ID'){
    //             this.devId = model[i]['CONFIG_VALUE'];
    //         }
    //     }
    // }

    async getConfig(IS_DEFAULT){
        this.arrConfig = await this.configRepository.find({IS_DEFAULT});
    }

    async loadMenu(){
        try {
            const model = await this.menuRepository.find();
            let num: number = 0;
            for(let i=0;i<model.length;i++){
                if(model[i]['IS_ENABLED'] == 1){
                    if(model[i]['IS_MAINMENU'] == 1){
                        model[i]['URUTAN'] = (num+1).toString();
                        this.arrMainMenu.push(model[i]);
                        num++;
                    } else {
                        model[i]['URUTAN'] = (num+1).toString();
                        this.arrSubMenu.push(model[i]);
                    }
                }
            }
        } catch (error) {
            console.log(error);
        }
    }

    async download(url, fileName) {
        const path = '../virtusbot-frontend-angular/src/assets/user-profile/';
        const exts = '.jpg';
        const fs = require('fs');
        const fetch = require('node-fetch');
        const response = await fetch(url);
        const buffer = await response.buffer();
        fs.writeFile(path + fileName + exts, buffer, () => console.log(fileName + exts + ' downloaded'));
    }

    async insertUser(msg, _url){
        let SENDER_ID = msg.from.id;

        try {
            let model = await this.userRepository.find({SENDER_ID});
            if(!model.length){
                this.arrUser = [{
                    SENDER_ID,
                    USERNAME: msg.from.username,
                    FIRSTNAME: msg.from.first_name,
                    PICTURE: 'assets/user-profile/' + SENDER_ID + '.jpg'
                }]
                await this.download(_url, SENDER_ID);
                this.userRepository.insert(this.arrUser);
            }
        } catch (error) {
            console.log(error);
        }
    }

    getUserPicture(bot: any, token: any, msg){
        var user_profile = bot.getUserProfilePhotos(msg.from.id);
        return user_profile.then(function (res) {
            var file_id = res.photos[0][0].file_id;
            var file = bot.getFile(file_id);
            return file.then(function (result) {
                var file_path = result.file_path;
                return 'https://api.telegram.org/file/bot' + token + '/' + file_path;
            });
        });
    }

    async registerUser(bot, token, msg){
        let url = await this.getUserPicture(bot, token, msg);
        this.insertUser(msg, url);
    }

    botMessage(){
        //process.env.NTBA_FIX_319 = "1";
        const TelegramBot = require('node-telegram-bot-api');
        this.getConfig(1).then(val => {
            const bot = new TelegramBot(this.arrConfig[0]['TELEGRAM_TOKEN'], { polling: true });

            bot.on('message', (msg) => {
                this.getConfig(1);
                this.loadMenu();
                this.registerUser(bot, this.arrConfig[0]['TELEGRAM_TOKEN'], msg);
                
                const defaultOpts = {
                    reply_to_message_id: msg.message_id,
                    reply_markup: { remove_keyboard: true },
                    parse_mode: 'HTML'
                };

                const ynOpts = {
                    reply_to_message_id: msg.message_id,
                    reply_markup: JSON.stringify({
                        inline_keyboard: [[
                            {
                                text: 'Tampilkan Menu',
                                callback_data: 'menu'
                            }, {
                                text: 'Akhiri Percakapan',
                                callback_data: 'bye'
                            }
                        ]],
                        one_time_keyboard: true
                    }),
                    parse_mode: 'HTML'
                };

                if(this.arrConfig[0]['IS_MAINTENANCE'] && msg.from.id != this.arrConfig[0]['DEV_ID']){ // DEV
                    console.log(this.arrConfig[0]['IS_MAINTENANCE'], msg.from.id, this.arrConfig[0]['DEV_ID']);
                    let msgcontent: string = "Saya adalah <i>" + this.arrConfig[0]['BOT_NAME'] + "</i>. Mohon maaf, bot sedang dalam maintenance.";
                    bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                    this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                } else { // PROD
                    if (this.greetingsCheck(msg.text)) {
                        let msgcontent: string =this.sendGreetings() + ", <i>" + msg.from.first_name + "</i>. Saya adalah <i>" + this.arrConfig[0]['BOT_NAME'] + "</i>\n\n" +
                        "Apabila kamu ingin mengetahui tentang <i>" + this.arrConfig[0]['COMPANY_NAME'] + "</i>, kamu dapat menekan tombol \"Tampilkan Menu\" \u{1F60A}";
                        bot.sendMessage(msg.from.id, msgcontent, ynOpts);
                        this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                    }
                    else if (msg.text.toString().toLowerCase().includes("siapa")) {
                        let msgcontent: string = "Saya adalah <i>" + this.arrConfig[0]['BOT_NAME'] + "</i>, ada yang bisa saya bantu?\u{1F603}";
                        bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                        this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                    }
                    else if (this.capabilityCheck(msg.text)) {
                        let list: string[] = []
                        for(let i=0;i<this.arrMainMenu.length;i++){
                            if(this.arrMainMenu[i].IS_MAINMENU == 1){
                                list[i] = this.emojiNumbering(this.arrMainMenu[i]['URUTAN']) + " - " + this.arrMainMenu[i]['TITLE'];
                            }
                        }
    
                        let msgcontent: string = "Saya sangat senang apabila kamu tertarik untuk mengetahui lebih lanjut. \u{1F60A}\n\n<b>Apa yang ingin kamu tanyakan?</b>\n"+ list.join("\n");
                        bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                        this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                    }
                    else if (this.farewellCheck(msg.text)){
                        let msgcontent: string = "Terima kasih! \u{1F64F} Sampai jumpa, <i>" + msg.from.first_name + "</i> \u{1F64B}";
                        bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                        this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                    }
                    else if (this.commandCheck(msg.text)) {
                        let menuContent: any = this.menuCheck(msg.text.toString().toLowerCase());
                        let msgcontent: string;
                        if(menuContent['IS_LASTMENU'] == '0'){
                            msgcontent = menuContent['CONTENT'] + " \n\nApa yang ingin kamu tanyakan? \u{1F60A}\u{1F60A}";
                            bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                        } else {
                            msgcontent = menuContent['CONTENT'] + " \n\nMasih ada yang ingin kamu tanyakan? \u{1F60A}\u{1F60A}";
                            bot.sendMessage(msg.chat.id, msgcontent, ynOpts);
                        }
                        this.visitorCounter(menuContent['ID']);
                        this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                    }
                    else{
                        let list: string[] = []
                        for(let i=0;i<this.arrMainMenu.length;i++){
                            if(this.arrMainMenu[i].IS_MAINMENU == 1){
                                list[i] = this.emojiNumbering(this.arrMainMenu[i]['URUTAN']) + " - " + this.arrMainMenu[i]['TITLE'];
                            }
                        }
    
                        let msgcontent: string = "Maaf. Sementara ini saya belum mengerti jawabanmu. \u{1F615}\n\n<b>Tapi saya bisa memberikan informasi tentang beberapa poin dibawah: </b> \u{263A}\n"+ list.join("\n");
                        bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                        this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                    }
                }
                this.arrMainMenu = [];
                this.arrSubMenu = [];
            });

            bot.on('callback_query', (callbackQuery) => {
                this.loadMenu();
                const msg = callbackQuery.message;
                const category = callbackQuery.data;
                const defaultOpts = {
                    parse_mode: 'HTML'
                };

                if(category == 'bye'){
                    let msgcontent: string = "Terima kasih! \u{1F64F} Sampai jumpa \u{1F64B}";
                    bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                    //this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                    
                } else if(category == 'menu'){
                    let list: string[] = []
                        for(let i=0;i<this.arrMainMenu.length;i++){
                            if(this.arrMainMenu[i].IS_MAINMENU == 1){
                                list[i] = this.emojiNumbering(this.arrMainMenu[i]['URUTAN']) + " - " + this.arrMainMenu[i]['TITLE'];
                            }
                        }
    
                        let msgcontent: string = "Saya sangat senang apabila kamu tertarik untuk mengetahui lebih lanjut. \u{1F60A}\n\n<b>Apa yang ingin kamu tanyakan?</b>\n"+ list.join("\n");
                        bot.sendMessage(msg.chat.id, msgcontent, defaultOpts);
                        //this.sendLog(msg.from.id, msg.from.username, msg.from.first_name, msg.text, msgcontent);
                }

                bot.editMessageReplyMarkup(defaultOpts, {
                    chat_id: callbackQuery.message.chat.id,
                    message_id: callbackQuery.message.message_id,
                    text: msg
                });
                this.arrMainMenu = [];
                this.arrSubMenu = [];
            });
        });
        
    }

    emojiNumbering(idxs){
        var chars = {"1":"1️⃣","2":"2️⃣","3":"3️⃣","4":"4️⃣","5":"5️⃣","6":"6️⃣","7":"7️⃣","8":"8️⃣","9":"9️⃣","0":"0️⃣"};
        return idxs.replace(/[1234567890]/g, m => chars[m]);
    }

    async visitorCounter(menuid: string){
        await getManager().query(`UPDATE m_menu SET VISITOR = VISITOR + 1 WHERE ID = '` + menuid + `'`);
    }

    isNumeric(n) {
        return !isNaN(parseFloat(n)) && isFinite(n);
    }

    greetingsCheck(msg: string){
        return this.kataSapaan.some(i => msg.toString().toLowerCase().includes(i));
    }

    capabilityCheck(msg: string){
        return this.kataKemampuan.some(i => msg.toString().toLowerCase().includes(i));
    }

    farewellCheck(msg: string){
        return this.kataPerpisahan.some(i => msg.toString().toLowerCase().includes(i));
    }

    commandCheck(msg: string){
        if(this.isNumeric(msg.toString().toLowerCase())){
            return this.arrMainMenu.some(i => i.URUTAN == msg.toString().toLowerCase());
        } else {
            return this.arrSubMenu.some(i => i.KEYWORD == msg.toString().toLowerCase());
        }
    }

    menuCheck(msg: string){
        let tArr;
        if(this.isNumeric(msg.toString().toLowerCase())){
            tArr = this.arrMainMenu.filter(obj => obj.URUTAN == msg);
        } else {
            tArr = this.arrSubMenu.filter(obj => obj.KEYWORD == msg);
        }
        return tArr[0];
    }

    sendGreetings(){
        var today = new Date();
        var hours = today.getHours();
        var val;

        if (hours < 11) { val = 'Selamat pagi'; }
        else if (hours < 15) { val = 'Selamat siang'; }
        else if (hours < 18) { val = 'Selamat sore'; }
        else if (hours < 24) { val = 'Selamat malam'; }

        return val;
    }

    async sendLog(_senderid, _senderusername, _sendernick, _msg, _response){
        var dt = new Date(Date.now());

        if(!this.arrConfig[0]['IS_MAINTENANCE']){
            let data: LogEntity[] = [];

            data = [{
                LOG_ID: null,
                SENDER_ID: _senderid,
                SENDER_USERNAME: _senderusername,
                SENDER_NICK: _sendernick,
                MSG: _msg,
                RESPONSE: _response,
                TIMESTAMP: dt.getTime()/1000.0
                }];

            try { await this.logRepository.insert(data); }
            catch (error) { console.log(error); }
        }
        
    }
}