import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { LogEntity } from 'src/entity/log.entity';
import { LogViewEntity } from 'src/entity/view/log-view.entity';
import { LogController } from './log.controller';
import { LogService } from './log.service';

@Module({
  imports: [
    TypeOrmModule.forFeature([LogEntity]),
    TypeOrmModule.forFeature([LogViewEntity])
],
  controllers: [LogController],
  providers: [LogService]
})
export class LogModule {}
