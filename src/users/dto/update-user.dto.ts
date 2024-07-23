import { PartialType } from '@nestjs/mapped-types';
import {
  IsEmail,
  IsNotEmpty,
  IsString,
  IsStrongPassword,
  MinLength,
} from 'class-validator';
import { CreateUserDto } from './create-user.dto';

export class UpdateUserDto extends PartialType(CreateUserDto) {
  @IsString()
  @IsNotEmpty()
  @MinLength(3)
  name: string;

  @IsString()
  @IsNotEmpty()
  @MinLength(3)
  lastName: string;

  @IsString()
  @IsEmail()
  email: string;

  @MinLength(6)
  @IsStrongPassword()
  password: string;
}
