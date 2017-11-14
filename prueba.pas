program prueba;
uses crt,aerolineas;
begin  //incio del programa
readln(posicion);
abrir_aerolineas(archivo_aerolineas);
leer_aerolineas(archivo_aerolineas,posicion,reg_aero);
cerrar_aerolineas(archivo_aerolineas);
end.
