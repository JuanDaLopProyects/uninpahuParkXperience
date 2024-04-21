create database UninpahuParkXperince;
use UninpahuParkXperince;

create table usuario(
cedula bigint primary key,
nombre varchar (50),
apellido varchar (50),
telefono bigint,
codigo_usuario int unique,
contraseña bigint
);

create table vehiculo(
placa varchar (50) primary key,
descripcion varchar (50),
cedula bigint,
foreign key (cedula) references usuario (cedula)
);

create table marca(
id_marca int  primary key auto_increment,
marca varchar(100),
referencia varchar(100),
modelo int,
cilindraje bigint,
descripcion varchar(1000),
placa varchar (50),
foreign key (placa) references vehiculo (placa)
);

create table TiposDePago(
id_mediospago int primary key auto_increment,
descripcion varchar  (1000),
cedula bigint,
foreign key (cedula) references usuario (cedula)
);

create table tarifa (
id_tarifa int primary key auto_increment,
descripcion varchar (50) ,
id_mediospago int,
foreign key (id_mediospago) references TiposDePago (id_mediospago)
 );
 
  create table factura (
 id_factura int primary key auto_increment,
 valor_pago int not null,
 id_tarifa int,
 foreign key (id_tarifa) references tarifa (id_tarifa)
 );
 
 create table disponibilidad(
 id_espaciodisponible int primary key auto_increment,
 cupo int,
 id_vehiculo varchar (50),
 foreign key (id_vehiculo) references vehiculo (placa)
 );
  
create table ingreso(
id_ingreso int primary key auto_increment,
fecha_hora time not null,
id_espaciodisponible int,
foreign key (id_espaciodisponible) references disponibilidad (id_espaciodisponible)
);
