import { Controller, Get, Post, Patch, Delete,Param} from '@nestjs/common';

@Controller("solicitudes")
export class SolicitudesController {
//endopoint
//destino de la request
//se ecribe como una funcion 
//en una clase controlador
  @Get()
  consultarSolicitud(): string {
    return "aqui se podra consultar todas las solicitudes";
  }
    @Get(":id")
    consultarSolicitudPorId(@Param('id') id: string){
      return `aqui se va a consultar solicitud por id:  ${id}`;
  }
  @Post()
  crearSolicitud(): string {
    return "aqui se podra crear una solicitud";
  }
  @Patch(":id")
  actualizarSolicitudPorId(@Param("id")id: string) {
  return `aqui se podra actualizar una solicitud: ${id}`;
  }
  
 @Delete(":id")
eliminarAdministradorPorId(@Param("id")id:string){
  return`aqui se va a eliminar administrador con id:${ id }`
}

}