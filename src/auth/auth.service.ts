import { Injectable, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

import { User } from 'src/users/user.entity';
import { UsersService } from 'src/users/users.service';
import { AuthLoginDto } from './dto/auth-login.dto';

@Injectable()
export class AuthService {
  constructor(
    private usersService: UsersService,
    private jwtService: JwtService,
  ) {}

  async login(authLoginDto: AuthLoginDto) {
    const user = await this.validateUser(authLoginDto);

    const payload = {
      userId: user.ID,
    };

    return {
      ID: user.ID,
      USERNAME: user.USERNAME,
      TOKEN: this.jwtService.sign(payload),
    };
  }

  async validateUser(authLoginDto: AuthLoginDto): Promise<User> {
    const { USERNAME, PASSWORD } = authLoginDto;

    const user = await this.usersService.findByEmail(USERNAME);
    if (!(await user?.validatePassword(PASSWORD))) {
      throw new UnauthorizedException();
    }

    return user;
  }
}
