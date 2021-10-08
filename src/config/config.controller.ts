import { Body, Controller, Get, Put } from '@nestjs/common';
import { ConfigEntity } from 'src/entity/config.entity';
import { ConfigService } from './config.service';

@Controller('config')
export class ConfigController {
    constructor(private service: ConfigService) { }

    @Get('')
    get(){
        return this.service.getConfig();
    }

    @Put('')
    update(@Body() configdata: ConfigEntity){
        return this.service.updateConfig(configdata);
    }
}
