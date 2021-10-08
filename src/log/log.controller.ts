import { Controller, Delete, Get, Param } from '@nestjs/common';
import { LogService } from './log.service';

@Controller('log')
export class LogController {

    constructor(private service: LogService) { }    

    @Get('')
    get(){
        return this.service.getLog();
    }

    @Get('view')
    getView(){
        return this.service.getLogView();
    }

    @Get('recent')
    getRecent(){
        return this.service.getLogRecent();
    }

    @Get(':id')
    getByID(@Param() params){
        return this.service.getByID(params.id);
    }

    @Delete('delete/:id')
    delete(@Param() params){
        return this.service.deleteLog(params.id);
    }

}
