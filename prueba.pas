program prueba;
uses crt,unit_aerolineas;
begin  //incio del programa
readln(posicion);
abrir_aerolineas(archivo_aerolineas);
leer_aerolineas(archivo_aerolineas,posicion,reg_aerolineas);
cerrar_aerolineas(archivo_aerolineas);
end.
