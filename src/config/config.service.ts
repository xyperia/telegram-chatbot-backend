import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { ConfigEntity } from 'src/entity/config.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ConfigService {

    constructor(
        @InjectRepository(ConfigEntity) private configRepository: Repository<ConfigEntity>
        ) { }

        async getConfig(): Promise<any>{
            return await this.configRepository.find();
        }

        async updateConfig(configdata: ConfigEntity) {
            if(configdata){
                this.configRepository.save(configdata);
            }
        }
}
