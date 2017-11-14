unit unit_aerolineas;
interface

type
t_codaer= string[2];

t_aerolineas=record
codigo:t_codaer;
nombre:string[30];
direccion:string[50];
flota:string[20];
end;

arch_aerolineas=file of t_aerolineas;

var 
posicion:integer;
reg_aerolineas:t_aerolineas;
archivo_aerolineas:arch_aerolineas;
procedure abrir_aerolineas(var a_aero:arch_aerolineas);
procedure cerrar_aerolineas(var a_aero:arch_aerolineas);
procedure leer_aerolineas(var a_aero:arch_aerolineas; pos:integer;var reg:t_aerolineas);
procedure guarda_aerolineas(var a_aero:arch_aerolineas;reg:t_aerolineas; var pos:integer);
procedure modificar_aerolineas(var a_aero:arch_aerolineas; pos:integer;var reg:t_aerolineas);

implementation

procedure abrir_aerolineas(var a_aero:arch_aerolineas);
begin
	Assign(archivo_aerolineas,'/home/gretta/Escritorio/tp_vuelos_final/Proyecto-aeropuerto.-');
	if ioresult <> 0 then
	begin
	rewrite(a_aero);
	end;
end;

procedure cerrar_aerolineas( var a_aero:arch_aerolineas);
begin
close(a_aero);
end;

procedure leer_aerolineas(var a_aero:arch_aerolineas; pos:integer;var reg:t_aerolineas);
begin
seek(a_aero,pos);
read(a_aero,reg);
end;

procedure guarda_aerolineas(var a_aero:arch_aerolineas;reg:t_aerolineas; var pos:integer);
begin
seek(a_aero,pos);
write(a_aero,reg);
end;

procedure modificar_aerolineas(var a_aero:arch_aerolineas; pos:integer;var reg:t_aerolineas);
begin
seek(a_aero,pos);
write(a_aero,reg);
end;

end.
