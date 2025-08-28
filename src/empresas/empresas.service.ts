import { Injectable } from '@nestjs/common';
import { CreateEmpresaDto } from './dto/create-empresa.dto';
import { UpdateEmpresaDto } from './dto/update-empresa.dto';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class EmpresasService {
  constructor(private  prisma: PrismaService
  ) {}
  create(body: any) {
    return this.prisma.empresas.create({
      data:body
    })
    }

  findAll() {
    return this.prisma.empresas.findMany({
      orderBy:{name:'desc'}
    })
  }

  findOne(id: number) {
   return this.prisma.empresas.findFirst({
    where:{id:id}
   })
  }
  

   async update(id: number, 
                body: any) {
    return  await this. prisma. empresas.update ({
      where:{id:id},
      data: body
   })
  }


  async remove(id: number) {
    await this.prisma.empresas.delete({
      where:{id:id}
    });
    return {
      "exito": true,
      "mensaje": "Empresa eliminada",
      "id" : id
  }
}
}
