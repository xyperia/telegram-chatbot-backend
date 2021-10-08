import { IsEmail, IsNotEmpty } from 'class-validator';

export class AuthLoginDto {
  @IsEmail()
  USERNAME: string;

  @IsNotEmpty()
  PASSWORD: string;
}
