import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SolicitudesModule } from './solicitudes/solicitudes.module';
import { EmpresasModule } from './empresas/empresas.module';
import { PrismaModule } from './prisma/prisma.module';


@Module({
  imports: [SolicitudesModule, EmpresasModule , PrismaModule],
  controllers: [AppController],
  providers: [AppService ],
})
export class AppModule {}
