import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ApiController } from './api.controller';
import { TelegramBotService } from './telegram-bot/telegram-bot.service';
import { MenuEntity } from 'src/entity/menu.entity';
import { ConfigEntity } from 'src/entity/config.entity';
import { LogEntity } from 'src/entity/log.entity';
import { UserEntity } from 'src/entity/user.entity';

@Module({
  imports: [
  TypeOrmModule.forFeature([MenuEntity]),
  TypeOrmModule.forFeature([ConfigEntity]),
  TypeOrmModule.forFeature([LogEntity]),
  TypeOrmModule.forFeature([UserEntity])
],
  providers: [TelegramBotService],
  controllers: [ApiController]
})
export class ApiModule {}
