import { Module } from '@nestjs/common';
import { SolicitudesController } from './solicitudes.controller';


@Module({
  imports: [],
  controllers: [SolicitudesController],
  providers: [],
})
export class SolicitudesModule {}
