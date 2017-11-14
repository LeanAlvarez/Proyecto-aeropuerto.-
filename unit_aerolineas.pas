unit aerolineas;
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
procedure guarda_aerolineas(var a_aero:arch_aerolineas;reg:t_aerolineas);
procedure modificar_aerolineas(var a_aero:arch_aerolineas; pos:integer;var reg:t_aerolineas);

implementation

procedure abrir_aerolineas(var a_aero:arch_aerolineas);
begin
	Assing(archivo_aerolineas/Escritorio/tp_final.dat);
	if ioresult <> 0 then
	begin
	rewrite(a_aero);
	end;
end;

procedure cerrar_aerolineas( var a_aero:arch_aerolineas);
begin
close(a_aero);
end;

procedure leer_aerolineas(var a_aero:arch_aerolineas; pos:integer;var reg:t_aerolinea);
begin
seek(a_aero,pos);
read(a_aero,reg);
end;

procedure guarda_aerolineas(var a_aero:arch_aerolineas;reg:t_aerolineas);
begin
seek(a_aero,filesize);
write(a_aero,reg);
end;

procedure modificar_aerolineas(var a_aero:arch_aerolineas; pos:integer;var reg:t_aerolineas);
begin
seek(a_aero,pos);
write(a_aero,reg);
end;

end.
