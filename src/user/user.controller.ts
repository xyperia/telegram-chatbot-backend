import { Controller, Get, Param } from '@nestjs/common';
import { UserService } from './user.service';

@Controller('user')
export class UserController {

    constructor(private service: UserService) { }

    @Get('')
    get(){
        return this.service.getUser();
    }
}
