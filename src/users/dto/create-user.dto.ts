import { IsEmail, IsNotEmpty } from 'class-validator';

export class CreateUserDto {
  @IsEmail()
  USERNAME: string;

  @IsNotEmpty()
  PASSWORD: string;
}
