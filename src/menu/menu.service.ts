import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { getManager, Repository } from 'typeorm';
import { MenuEntity } from '../entity/menu.entity';

@Injectable()
export class MenuService {
    constructor(
        @InjectRepository(MenuEntity) private menuRepository: Repository<MenuEntity>
        ) { }

    async getMenu(): Promise<any>{
        return await this.menuRepository.find();
    }

    async getPopularMenu(): Promise<any>{
        return await getManager().query(`SELECT TITLE, VISITOR FROM M_MENU ORDER BY VISITOR DESC LIMIT 10`);

        // let data;
        // try {
        //     const model = await getManager()
        //     .query(`SELECT TITLE, VISITOR FROM M_MENU ORDER BY VISITOR DESC LIMIT 5`);
        //     if (!model.length) {
        //         data = { "data": [], label: "Number of request" };
        //     } else {
        //         data = { "data": model, label: "Number of request" };
        //     }

        // } catch (error) {
        //     data = error.message
        // }
        // return data
    }

    async createMenu(menu_data: MenuEntity){
        if(menu_data){
            this.menuRepository.insert(menu_data);
        }
    }

    async updateMenu(menu_data: MenuEntity) {
        if(menu_data){
            this.menuRepository.save(menu_data);
        }
    }

    async deleteMenu(menu_id: string){
        this.menuRepository.delete(menu_id);
    }
        
}
