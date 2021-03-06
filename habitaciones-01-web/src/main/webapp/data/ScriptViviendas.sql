delete from UsuarioEntity_ReservaEntity;
delete from ReservaEntity;
delete from MultaEntity;
delete from UsuarioEntity_ViviendaEntity;
delete from HabitacionEntity;
delete from ViviendaEntity;
delete from UsuarioEntity;

insert into UsuarioEntity (numeroId, DTYPE, contrasenha, correo, direccion, nombre, numeroTarjeta, telefono, tipoId, usuario, puntuacion,image) values (1,'c', 'hola', 'hola@hola.com', 'calle 1 No 1-1', 'Andres', 18723889, 6876187, 'Cedula', 'andres', 10,'https://randomuser.me/api/portraits/men/63.jpg');
insert into UsuarioEntity (numeroId, DTYPE, contrasenha, correo, direccion, nombre, numeroTarjeta, telefono, tipoId, usuario, puntuacion,image) values (2,'c', 'hola2', 'hola2@hola.com', 'calle 2 No 2.2', 'David', 18723888, 6876188, 'Cedula', 'david', 10,'https://randomuser.me/api/portraits/men/84.jpg?aki_policy=large');
insert into UsuarioEntity (numeroId, DTYPE, contrasenha, correo, direccion, nombre, numeroTarjeta, telefono, tipoId, usuario, puntuacion,image) values (3,'c', 'Raj Koothrappali', 'raj@hola.com', 'calle 3 No 3-3', 'Raj Koothrappali', 18723810, 6876110, 'Cedula', 'raj', 10,'https://randomuser.me/api/portraits/men/39.jpg?aki_policy=large');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (493745386, 'c', 'Zy8H9k6av9', 'ucrolla0@sphinn.com', '0 Charing Cross Junction', 'Udell', 3553350500126838, 3532255930593, 'CC', 'usawyer0', 9, 'https://randomuser.me/api/portraits/women/23.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (062708191, 'c', 'DmCEPNQ6Cf', 'dmegarry1@nasa.gov', '565 Nelson Junction', 'Dag', 3539204727695951, 5927739627847, 'CC', 'dirdale1', 10, 'https://randomuser.me/api/portraits/women/25.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (813420504, 'c', 'bPPpGr1i', 'eiamittii2@networkadvertising.org', '055 Randy Point', 'Elbert', 3567253093596322, 574121739039, 'TI', 'eserrier2', 10, 'https://randomuser.me/api/portraits/women/24.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (934154839, 'c', 'Gm4JG64', 'mmarunchak3@uol.com.br', '3 Vermont Plaza', 'Maximilien', 3546043898084442, 63368798830, 'TI', 'mtruggian3', 10, 'https://randomuser.me/api/portraits/women/23.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (983697476, 'c', 'ZCBVP39q0Ec4', 'bconduit4@hud.gov', '89 Clemons Center', 'Bob', 63043583112588456, 4204859441688, 'TI', 'bbraybrooke4', 9, 'https://randomuser.me/api/portraits/women/25.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (847444621, 'c', 'ww1Edl', 'ascamadin0@mapy.cz', '05576 Parkside Avenue', 'Andra', 201878376127052, 868688084567, 'CC', 'ayanez0', 10, 'https://randomuser.me/api/portraits/men/26.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (909486948, 'c', 'm6hDOQ4GvDeU', 'asavary1@usgs.gov', '096 Killdeer Way', 'Annelise', 3557375044703350, 549217459856, 'TI', 'aabramson1', 8, 'https://randomuser.me/api/portraits/men/23.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (435384235, 'c', 'y7u1ZOwq', 'kmonketon2@ehow.com', '705 Southridge Point', 'Kipp', 3549712399356668, 337798965905, 'CC', 'kreyne2', 8, 'https://randomuser.me/api/portraits/men/21.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (580605295, 'c', 'bojCDdRRaDim', 'adangl3@loc.gov', '95 Upham Circle', 'Antoni', 3553598323467827, 861978450237, 'CC', 'amcdavitt3', 9, 'https://randomuser.me/api/portraits/men/28.jpg');
insert into APP.USUARIOENTITY (NUMEROID, DTYPE, CONTRASENHA, CORREO, DIRECCION, NOMBRE, NUMEROTARJETA, TELEFONO, TIPOID, USUARIO, PUNTUACION, IMAGE) values (123456, 'c', '1234','jaime@jaime.com','jaime #43-3', 'Jaime Chavarriaga', 12345567, 12345678, 'CC', 'JaimeAdmin', 10, 'https://image.ibb.co/jKoK0k/jaime.jpg" ');

insert into ViviendaEntity (idVivienda, capacidad, ciudad, descripcion, direccion, imagen, valorDiario, anfitrion_numeroId) values (1, 6, 'Bogota', 'Casa bonita', 'Calle 200', 'https://a0.muscache.com/im/pictures/42492006/d656f7da_original.jpg?aki_policy=large', 273,1);
insert into ViviendaEntity (idVivienda, capacidad, ciudad, descripcion, direccion, imagen, valorDiario, anfitrion_numeroId) values (2, 8, 'Cali', 'Casa grande', 'Calle 15', 'https://a0.muscache.com/im/pictures/25735497/948807b4_original.jpg?aki_policy=large', 458,2);
insert into ViviendaEntity (idVivienda, capacidad, ciudad, descripcion, direccion, imagen, valorDiario, anfitrion_numeroId) values (3, 5, 'Medellin', 'Casa fea', 'Calle 45', 'https://a0.muscache.com/im/pictures/52149945/33130c63_original.jpg?aki_policy=large', 430,1);
insert into ViviendaEntity (idVivienda, capacidad, ciudad, descripcion, direccion, imagen, valorDiario, anfitrion_numeroId) values (4, 5, 'Villa de Leyva', 'Casa pequena', 'Calle 70', 'https://a0.muscache.com/im/pictures/21162888/5a0f1151_original.jpg?aki_policy=large', 350,2);
insert into ViviendaEntity (idVivienda, capacidad, ciudad, descripcion, direccion, imagen, valorDiario, anfitrion_numeroId) values (5, 6, 'Cartagena', 'Casa de playa', 'Calle 1', 'https://a0.muscache.com/im/pictures/15960725/b8a9e9e0_original.jpg?aki_policy=large', 550,1);
insert into ViviendaEntity (idVivienda, capacidad, ciudad, descripcion, direccion, imagen, valorDiario, anfitrion_numeroId) values (6, 7, 'Santa Marta', 'Casa divertida', 'Calle 18', 'https://a0.muscache.com/im/pictures/16304758/0ec38e53_original.jpg?aki_policy=large', 470,2);


insert into HabitacionEntity (id, area, capacidad, descripcion, imagen, valorDiario, vivienda_idvivienda) values (1, 30, 2, 'bonita', 'http://www.casacumbrero.com/images/casa_rural_habitaciones_1_b.jpg', 858, 1);
insert into HabitacionEntity (id, area, capacidad, descripcion, imagen, valorDiario, vivienda_idvivienda) values (2, 31, 3, 'fea', 'http://www.casaentremuros.com/media/img/habitacion1_casa_entremuros800x600.jpg', 859, 2);
insert into HabitacionEntity (id, area, capacidad, descripcion, imagen, valorDiario, vivienda_idvivienda) values (3, 32, 4, 'grande', 'https://www.diariofemenino.com/images/galeria/12000/12166_la-habitacion-de-la-casa-de-jude-law-y-sienna-miller.jpg', 852, 3);
insert into HabitacionEntity (id, area, capacidad, descripcion, imagen, valorDiario, vivienda_idvivienda) values (4, 33, 5, 'mediana', 'http://countryvillaslanzarote.com/wp-content/uploads/2015/05/C-de-Mozaga-habitacion1.jpg', 855, 3);

insert into UsuarioEntity_ViviendaEntity (anfitrionEntity_numeroId, viviendas_idvivienda) values (2, 1);
insert into UsuarioEntity_ViviendaEntity (anfitrionEntity_numeroId, viviendas_idvivienda) values (2, 2);
insert into UsuarioEntity_ViviendaEntity (anfitrionEntity_numeroId, viviendas_idvivienda) values (2, 3);
insert into UsuarioEntity_ViviendaEntity (anfitrionEntity_numeroId, viviendas_idvivienda) values (2, 4);

insert into MultaEntity (codigoMulta, fechaCancelacion, fechaPago) values (1, null,null);
insert into MultaEntity (codigoMulta, fechaCancelacion, fechaPago) values (2, null,null);
insert into MultaEntity (codigoMulta, fechaCancelacion, fechaPago) values (3, null,null);
insert into MultaEntity (codigoMulta, fechaCancelacion, fechaPago) values (4, '2017-03-07 00:00:00',null);

insert into ReservaEntity (codigoReserva, costo, estado, fechaInicio, fechaFin, habitacion_Id, vivienda_idvivienda, multa_codigoMulta) values (1, 89654, 'H', '2017-03-07 00:00:00', '2017-03-10 00:00:00', 1 , 1, 1);
insert into ReservaEntity (codigoReserva, costo, estado, fechaInicio, fechaFin, habitacion_Id, vivienda_idvivienda, multa_codigoMulta) values (2, 89654, 'P', '2017-03-08 00:00:00', '2017-03-11 00:00:00', 1 , 2, 2);
insert into ReservaEntity (codigoReserva, costo, estado, fechaInicio, fechaFin, habitacion_Id, vivienda_idvivienda, multa_codigoMulta) values (3, 89654, 'A', '2017-03-09 00:00:00', '2017-03-12 00:00:00', 1 , 3, 3);
insert into ReservaEntity (codigoReserva, costo, estado, fechaInicio, fechaFin, habitacion_Id, vivienda_idvivienda, multa_codigoMulta) values (4, 89654, 'C', '2017-03-10 00:00:00', '2017-03-13 00:00:00', 1 , 4, 4);

insert into UsuarioEntity_ReservaEntity (UsuarioEntity_numeroId, reservas_codigoReserva) values (1,1);
insert into UsuarioEntity_ReservaEntity (UsuarioEntity_numeroId, reservas_codigoReserva) values (2,2);
insert into UsuarioEntity_ReservaEntity (UsuarioEntity_numeroId, reservas_codigoReserva) values (1,3);
insert into UsuarioEntity_ReservaEntity (UsuarioEntity_numeroId, reservas_codigoReserva) values (2,4);