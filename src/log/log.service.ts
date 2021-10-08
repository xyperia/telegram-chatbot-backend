import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { LogEntity } from 'src/entity/log.entity';
import { LogViewEntity } from 'src/entity/view/log-view.entity';
import { getManager, Repository } from 'typeorm';

@Injectable()
export class LogService {

    constructor(
        @InjectRepository(LogEntity) private logRepository: Repository<LogEntity>,
        @InjectRepository(LogViewEntity) private logViewRepository: Repository<LogViewEntity>
        ) { }
        
    async getLog(): Promise<any>{
        return await this.logRepository.find();
    }

    async getLogView(): Promise<any>{
        return await this.logViewRepository.find();
    }

    async getLogRecent(): Promise<any>{
        return await getManager().query(`SELECT * FROM M_LOG ORDER BY TIMESTAMP DESC LIMIT 10`);
    }

    async getByID(SENDER_ID: number): Promise<any>{
        return await this.logRepository.find({SENDER_ID});
    }

    async deleteLog(senderid: number){
        await getManager().query(`DELETE FROM m_log WHERE SENDER_ID = ` + senderid);
    }
}
