import { ConflictException, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/database/prisma.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-user.dto';

@Injectable()
export class UsersService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(createUserDto: CreateUserDto) {
    const { email, nif, lastName, name, password } = createUserDto;

    const userNifExist = await this.prismaService.user.findUnique({
      where: { nif },
    });

    const userExistEmail = await this.prismaService.user.findUnique({
      where: { email },
    });

    if (userExistEmail) {
      throw new ConflictException('This is email already in use');
    }

    if (userNifExist) {
      throw new ConflictException('This identeificadion already in use');
    }

    const user = await this.prismaService.user.create({
      data: {
        nif,
        name,
        lastName,
        email,
        password,
      },
    });

    return user;
  }

  findOne(id: number) {
    return `This action returns a #${id} user`;
  }

  update(id: number, updateUserDto: UpdateUserDto) {
    return updateUserDto;
  }

  remove(id: number) {
    return `This action removes a #${id} user`;
  }
}
