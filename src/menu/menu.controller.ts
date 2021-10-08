import { Body, Controller, Delete, Get, Param, Post, Put } from '@nestjs/common';
import { MenuEntity } from 'src/entity/menu.entity';
import { MenuService } from './menu.service';

@Controller('menu')
export class MenuController {
    constructor(private service: MenuService) { }

    @Get('')
    get(){
        return this.service.getMenu();
    }

    @Get('popular')
    getPopular(){
        return this.service.getPopularMenu();
    }

    @Put('')
    update(@Body() menu_data: MenuEntity){
        return this.service.updateMenu(menu_data);
    }

    @Post('')
    create(@Body() menu_data: MenuEntity){
        return this.service.createMenu(menu_data);
    }

    @Delete('delete/:id')
    delete(@Param() params){
        let val = 'VTI/BOT/' + params.id;
        return this.service.deleteMenu(val);
    }
}
