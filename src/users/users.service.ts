import { Injectable } from '@nestjs/common';

import { User } from './user.entity';
import { CreateUserDto } from './dto/create-user.dto';

@Injectable()
export class UsersService {
  async create(createUserDto: CreateUserDto) {
    const user = User.create(createUserDto);
    await user.save();

    delete user.PASSWORD;
    return user;
  }

  async showById(ID: number): Promise<User> {
    const user = await this.findById(ID);

    delete user.PASSWORD;
    return user;
  }

  async findById(ID: number) {
    return await User.findOne(ID);
  }

  async findByEmail(username: string) {
    return await User.findOne({
      where: {
        USERNAME: username,
      },
    });
  }
}
