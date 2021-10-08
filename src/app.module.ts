import { Module } from '@nestjs/common';
import { MenuModule } from './menu/menu.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ApiModule } from './api/api.module';
import { LogModule } from './log/log.module';
import { UserModule } from './user/user.module';
import { ConfigModule } from './config/config.module';
import { UsersModule } from './users/users.module';
import { AuthModule } from './auth/auth.module';

@Module({
  imports: [
    TypeOrmModule.forRoot(),
    MenuModule,
    ApiModule,
    LogModule,
    UserModule,
    ConfigModule,
    UsersModule,
    AuthModule
  ]  
})
export class AppModule {}
