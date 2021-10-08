import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfigEntity } from 'src/entity/config.entity';
import { ConfigController } from './config.controller';
import { ConfigService } from './config.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([ConfigEntity])
  ],
  controllers: [ConfigController],
  providers: [ConfigService]
})
export class ConfigModule {}
