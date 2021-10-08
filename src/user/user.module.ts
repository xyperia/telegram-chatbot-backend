import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserEntity } from 'src/entity/user.entity';
import { UserController } from './user.controller';
import { UserService } from './user.service';

@Module({
  providers: [UserService],
  imports: [
    TypeOrmModule.forFeature([UserEntity])
  ],
  controllers: [UserController]
})
export class UserModule {}
