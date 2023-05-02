CREATE DATABASE pilares;
USE pilares;
CREATE TABLE usuarios(
  folio_usuario CHAR(5) PRIMARY KEY,
  nombre_usuario VARCHAR(50) NOT NULL,
  apellido_paterno_usuario VARCHAR(20), 
  apellido_materno_usuario VARCHAR(20),
  telefono_usuario VARCHAR(10),
  correo_usuario VARCHAR(30),
  direccion_usuario VARCHAR(50)  #CAMBIAR DE UBICACION
);
CREATE TABLE talleres(
  codigo_taller CHAR(5) PRIMARY KEY,
  nombre_taller VARCHAR(30) NOT NULL,
  duracion_taller VARCHAR(20),
  horario_taller TIME

);
CREATE TABLE responsable (
folio_responsable CHAR(5) PRIMARY KEY,
nombre_responsable CHAR(50),
apellido_paterno_responsable VARCHAR(50),
apellido_materno_res VARCHAR(50),
telefono_responsable CHAR(10),
correo_responsable VARCHAR(30),
direccion_responsable VARCHAR(50)

);
CREATE TABLE talleristas (
folio_tallerista CHAR(5) PRIMARY KEY,
nombre_tallerista CHAR(50),
apellido_paterno_tallerista VARCHAR(50),
apellido_materno_tallerista VARCHAR(50),
telefono_tallerista CHAR(10),
correo_tallerista VARCHAR(30),
direccion_tallerista VARCHAR(50),
codigo_taller1 CHAR(5), #Esta es la clave foranea
FOREIGN KEY (codigo_taller1) REFERENCES talleres(codigo_taller) 
);
CREATE TABLE pilares (
codigo_pilares CHAR(5) PRIMARY KEY,
nombre_pilares VARCHAR(30),
dirección_pilares VARCHAR(50),
folio_responsable1 CHAR(5), #esta es clave foranea
FOREIGN KEY(folio_responsable1) REFERENCES responsable(folio_responsable)
);

CREATE TABLE grupo (
  codigo_taller1 CHAR(5),
  folio_usuario1 CHAR(5),
  FOREIGN KEY(codigo_taller1) REFERENCES talleres(codigo_taller),
  FOREIGN KEY(folio_usuario1) REFERENCES usuarios(folio_usuario)
  );
  
CREATE TABLE tallpil(
  folio_tallerista1 CHAR(5),
  codigo_pilares1 CHAR(5),
  FOREIGN KEY(folio_tallerista1) REFERENCES talleristas(folio_tallerista),
  FOREIGN KEY (codigo_pilares1) REFERENCES pilares(codigo_pilares)
   );
    
  # modificación en la estructura ALTER (DDL- DATA DEFINITION LENGUAGE)
  #agregan attributos a las tablas
  ALTER TABLE usuarios
  ADD edad_usuario INT;
  ALTER TABLE grupo
  ADD código_grupo CHAR(5);
  #drop elimina datos y estructuras
  ALTER TABLE talleres
  DROP COLUMN horario_taller;
  ALTER TABLE grupo
  ADD horario_taller VARCHAR(20);
  
  ALTER TABLE usuarios
  #vamos a modificar la longitud del tipo de dato
  change direccion_usuario direccion_usuario VARCHAR(500);
  #con Insert metemos datos
  
  ALTER TABLE usuarios
  #modificamos la longitud del correo ya que tenemos usuarios con correos muy largos
  change correo_usuario correo_usuario VARCHAR(
    100);
  
  
  INSERT INTO usuarios VALUES ("10001", "JUAN", "GONZALES", "PEREZ", "5534778596", "pedroperez@gmail.com", "Av de los maestros alcaldia miguel hidalgo", 45);
  
  
  
  INSERT INTO usuarios VALUES ('1111', 'Madelon', 'Jonin', 'Siddle', '2525559197', 'msiddle0@ebay.com', '29777 Miller Trail', 52);
  
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1002', 'Gan', 'Giacomoni', 'Gowen', 45, 'ggowen1@ask.com', '2939724291', '464 Lunder Plaza');
  
  INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1003', 'Gaile', 'Batrim', 'Jacques', 40, 'gjacques2@amazon.co.jp', '2477195452', '462 East Alley');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1004', 'Marcelle', 'Wortman', 'Cackett', 31, 'mcackett3@aol.com', '9138081087', '31 Eagan Trail');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1005', 'Izaak', 'Heddy', 'Higgoe', 58, 'ihiggoe4@uol.com.br', '8747274362', '45 Pearson Alley');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1006', 'Kerwinn', 'Zoppie', 'Restill', 43, 'krestill5@comsenz.com', '1132145749', '32 Rieder Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1007', 'Heidi', 'Geall', 'Grist', 44, 'hgrist6@amazon.de', '7926075942', '66 Clemons Road');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1008', 'Kevyn', 'Beany', 'Earlam', 34, 'kearlam7@biglobe.ne.jp', '3308065956', '12148 South Plaza');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1009', 'Benedicta', 'Forker', 'Boules', 59, 'bboules8@timesonline.co.uk', '4753433437', '79 Dixon Lane');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1010', 'Ingrid', 'Solloway', 'Leisman', 50, 'ileisman9@bbc.co.uk', '9784809281', '0 Nova Circle');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1011', 'Stern', 'Yashin', 'Dudny', 22, 'sdudnya@technorati.com', '2782966701', '460 Brickson Park Avenue');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1012', 'Cosimo', 'Biddulph', 'Khadir', 36, 'ckhadirb@storify.com', '7201506618', '629 Sommers Point');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1013', 'Tamera', 'Reedyhough', 'Kment', 57, 'tkmentc@va.gov', '1143968289', '0 Lerdahl Court');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1014', 'Alene', 'Atherton', 'Hamshere', 54, 'ahamshered@opensource.org', '1352043263', '11145 Ronald Regan Park');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1015', 'Yolanda', 'Featherstone', 'Peers', 34, 'ypeerse@sakura.ne.jp', '4129448938', '67947 Kennedy Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1016', 'Evyn', 'Fullman', 'Faireclough', 20, 'efairecloughf@cargocollective.com', '5652399627', '63563 Lunder Drive');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1017', 'Phip', 'Nunes Nabarro', 'Letham', 22, 'plethamg@chron.com', '6744474314', '9219 Saint Paul Hill');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario)  VALUES ('1018', 'Irwinn', 'Spavon', 'Kidston', 53, 'ikidstonh@unesco.org', '6742629619', '1 Thierer Road');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1019', 'Deirdre', 'Cunah', 'Buckley', 28, 'dbuckleyi@usa.gov', '6185725051', '6625 Grayhawk Crossing');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1020', 'Joe', 'De la Barre', 'Matteucci', 50, 'jmatteuccij@bluehost.com', '8964884043', '9 Hansons Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1021', 'Gayla', 'Brumfitt', 'McAlester', 50, 'gmcalesterk@ow.ly', '8944038180', '1818 Corry Lane');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1022', 'Stephana', 'McCrackan', 'Ruppeli', 19, 'sruppelil@huffingtonpost.com', '6023309514', '416 Charing Cross Trail');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1023', 'Verne', 'Dumberrill', 'Stockey', 25, 'vstockeym@symantec.com', '7296931054', '99572 Scott Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1024', 'Aubrie', 'Crassweller', 'Twiddy', 64, 'atwiddyn@cornell.edu', '6849785457', '1027 Fair Oaks Junction');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1025', 'Standford', 'Andriessen', 'Roth', 29, 'srotho@xing.com', '6325571711', '19 Porter Park');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1026', 'Trixy', 'Jans', 'Midden', 23, 'tmiddenp@baidu.com', '2406265120', '65 Elmside Park');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1027', 'Ag', 'Pizey', 'Carnaman', 44, 'acarnamanq@w3.org', '6379595532', '2586 Commercial Court');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1028', 'Hermina', 'Fludder', 'Erley', 32, 'herleyr@biblegateway.com', '6412258109', '40 Lotheville Trail');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1029', 'Neel', 'Adamo', 'Cheine', 52, 'ncheines@pcworld.com', '9098745112', '75 Sunfield Parkway');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1030', 'Daniele', 'McGlade', 'Maciak', 40, 'dmaciakt@columbia.edu', '4766989400', '0507 Corscot Avenue');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1031', 'Ingunna', 'Cowlam', 'Tawse', 45, 'itawseu@microsoft.com', '2243889785', '5293 Morrow Point');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1032', 'Aylmer', 'Mughal', 'Scudder', 47, 'ascudderv@google.com.hk', '9755357681', '86118 Grim Road');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1033', 'Ricard', 'Delue', 'Meach', 51, 'rmeachw@fc2.com', '3488645760', '0365 East Street');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1034', 'Micki', 'Kimber', 'Whitlam', 31, 'mwhitlamx@over-blog.com', '1559150451', '780 Chinook Avenue');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1035', 'Ced', 'Liversage', 'Lang', 42, 'clangy@howstuffworks.com', '3145109890', '77830 Jenna Junction');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1036', 'Renee', 'Hamnet', 'Casford', 44, 'rcasfordz@europa.eu', '4504241716', '7 Reinke Junction');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1037', 'Kelsey', 'Etchingham', 'Zaniolini', 64, 'kzaniolini10@indiegogo.com', '7187740505', '611 Vernon Junction');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1038', 'Monti', 'Addie', 'Jales', 49, 'mjales11@newyorker.com', '8595956958', '037 Hoepker Hill');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1039', 'Boris', 'McGeachy', 'Callis', 20, 'bcallis12@nature.com', '6316648571', '06 Sunfield Road');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1040', 'Land', 'Whaplington', 'Westbrook', 26, 'lwestbrook13@salon.com', '5935081063', '7 Basil Center');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1041', 'Lura', 'Flanigan', 'Stidworthy', 33, 'lstidworthy14@nba.com', '6519814645', '1722 Pierstorff Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1042', 'Joan', 'Andrzejak', 'Dinning', 29, 'jdinning15@soundcloud.com', '9071209512', '3024 Esker Hill');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1043', 'Huntington', 'Ambrozewicz', 'Filyukov', 35, 'hfilyukov16@auda.org.au', '3233813064', '884 Mockingbird Court');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1044', 'Horton', 'Mendoza', 'Cardenas', 53, 'hcardenas17@github.com', '4833465156', '52 Elka Terrace');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1045', 'Brett', 'Veregan', 'Bricket', 38, 'bbricket18@deliciousdays.com', '5545099783', '3 Roth Place');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1046', 'Franklin', 'Tevlin', 'Hamments', 41, 'fhamments19@sogou.com', '5252751052', '653 Reindahl Point');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario)  VALUES ('1047', 'Kirstyn', 'Disney', 'Brassill', 27, 'kbrassill1a@t.co', '7524671975', '76653 Main Circle');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1048', 'Margi', 'Janovsky', 'Kilbey', 26, 'mkilbey1b@redcross.org', '9562915188', '08839 Merry Street');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1049', 'Quinn', 'Penfold', 'Moodycliffe', 35, 'qmoodycliffe1c@biglobe.ne.jp', '9905344786', '139 Kenwood Trail');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1050', 'Carlyle', 'Carwithen', 'Sainsberry', 51, 'csainsberry1d@hhs.gov', '8587021586', '1 Morning Park');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1051', 'Walt', 'Slessar', 'Stephens', 27, 'wstephens1e@fc2.com', '4978703015', '38597 Tennessee Circle');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1052', 'Lyle', 'Coupe', 'Willard', 61, 'lwillard1f@ox.ac.uk', '8317481319', '33368 Mallory Park');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1053', 'Ynes', 'de Quesne', 'Lamartine', 39, 'ylamartine1g@admin.ch', '3542835075', '0137 Truax Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1054', 'Rivkah', 'Cluse', 'Harnor', 49, 'rharnor1h@mapquest.com', '9932415505', '74 Monterey Circle');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1055', 'Ibbie', 'Iddenden', 'Reeder', 27, 'ireeder1i@europa.eu', '3845167487', '6 Declaration Drive');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1056', 'Christina', 'Dubois', 'Nears', 31, 'cnears1j@istockphoto.com', '7722412686', '45298 Summerview Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1057', 'Corabella', 'De Winton', 'Oughtright', 54, 'coughtright1k@domainmarket.com', '6843832791', '27587 Scoville Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1058', 'Sherman', 'Kettoe', 'Easum', 39, 'seasum1l@economist.com', '2855799349', '171 Cascade Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1059', 'Zebulen', 'Blackie', 'Limeburner', 40, 'zlimeburner1m@issuu.com', '6374373273', '75428 Pennsylvania Alley');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1060', 'Anestassia', 'Dresser', 'Matuszewski', 60, 'amatuszewski1n@mlb.com', '7902503855', '6 Sloan Drive');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1061', 'Lazarus', 'Hollington', 'Pryn', 40, 'lpryn1o@aol.com', '6664097099', '40 Coleman Park');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1062', 'Raviv', 'Chesswas', 'De Bell', 24, 'rdebell1p@simplemachines.org', '7058838125', '3 Melrose Crossing');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1063', 'Osmond', 'Leaburn', 'Clackson', 37, 'oclackson1q@blogtalkradio.com', '9977533078', '2 Fallview Drive');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1064', 'Christiano', 'Piser', 'Mayger', 49, 'cmayger1r@columbia.edu', '4876448109', '8904 Onsgard Place');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1065', 'Edy', 'Weerdenburg', 'Lemme', 21, 'elemme1s@cnbc.com', '2344127304', '298 Moulton Crossing');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1066', 'Sterling', 'Lavin', 'Deeble', 26, 'sdeeble1t@studiopress.com', '6082483545', '8491 Loftsgordon Court');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1067', 'Shandee', 'McMurty', 'Broadfield', 36, 'sbroadfield1u@pcworld.com', '3572486210', '64 Miller Center');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1068', 'Mersey', 'Thebeaud', 'Bett', 17, 'mbett1v@kickstarter.com', '9289096172', '7905 Dawn Drive');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1069', 'Wally', 'Sellack', 'Sproson', 47, 'wsproson1w@mashable.com', '9321323417', '4 International Lane');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1070', 'Fredrika', 'Posthill', 'Sabatier', 24, 'fsabatier1x@blogger.com', '4127998015', '77801 Division Junction');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1071', 'Suzie', 'Estrella', 'Stratiff', 24, 'sstratiff1y@yelp.com', '7306268654', '83510 Lunder Alley');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1072', 'Flo', 'Margram', 'Hestrop', 64, 'fhestrop1z@mapquest.com', '3416349933', '3 Ridgeway Street');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1073', 'Hayes', 'Mitkov', 'Larrosa', 22, 'hlarrosa20@amazonaws.com', '6377756839', '02 Truax Terrace');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1074', 'Julius', 'Broomhead', 'Dorrington', 18, 'jdorrington21@army.mil', '1157943014', '425 Artisan Parkway');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1075', 'Lizabeth', 'Luscombe', 'Jacks', 48, 'ljacks22@sina.com.cn', '7209910078', '2739 Emmet Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1076', 'Taylor', 'Erangey', 'Dible', 36, 'tdible23@xinhuanet.com', '3724839586', '675 Lake View Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1077', 'Guy', 'Daffey', 'Regitz', 51, 'gregitz24@irs.gov', '5454073056', '5191 Ludington Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1078', 'Dania', 'Mongenot', 'Poncet', 56, 'dponcet25@illinois.edu', '9839980702', '48774 Mariners Cove Plaza');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1079', 'Amanda', 'Lipscombe', 'Gashion', 33, 'agashion26@networkadvertising.org', '2432222288', '6 Lyons Trail');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1080', 'Muire', 'Bangiard', 'Toffalo', 65, 'mtoffalo27@g.co', '3683033432', '30 Harbort Terrace');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1081', 'Demott', 'Spilisy', 'Armfirld', 18, 'darmfirld28@huffingtonpost.com', '8462124614', '681 Starling Terrace');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1082', 'Howie', 'Brach', 'Strowger', 60, 'hstrowger29@boston.com', '1945811195', '71982 Manitowish Court');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1083', 'Angel', 'Gifford', 'MacElharge', 61, 'amacelharge2a@jalbum.net', '8633283061', '08244 Barnett Terrace');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1084', 'Tobe', 'Antognazzi', 'Iiannoni', 40, 'tiiannoni2b@sbwire.com', '2868299842', '5 Cardinal Plaza');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1085', 'Maure', 'Ritter', 'Megarrell', 56, 'mmegarrell2c@zdnet.com', '1225154167', '789 Little Fleur Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1086', 'Neal', 'Hymus', 'Drewitt', 26, 'ndrewitt2d@smh.com.au', '1608852261', '89 Emmet Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1087', 'Chantalle', 'Mogenot', 'Sonier', 39, 'csonier2e@nyu.edu', '5483226069', '60526 Ohio Avenue');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1088', 'Rosaleen', 'Lulham', 'Dumbreck', 34, 'rdumbreck2f@msn.com', '1456566159', '2715 Magdeline Point');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario)  VALUES ('1089', 'Tamarra', 'Manjot', 'Matthewes', 40, 'tmatthewes2g@microsoft.com', '8304337837', '0 Upham Street');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1090', 'Bryan', 'Shillinglaw', 'McManamen', 57, 'bmcmanamen2h@csmonitor.com', '5893039859', '2 Grover Way');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1091', 'Tootsie', 'Edgecumbe', 'Prott', 24, 'tprott2i@google.cn', '7977402874', '0528 Derek Alley');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1092', 'Teddie', 'Minchella', 'Roscamps', 27, 'troscamps2j@netscape.com', '5804340209', '4675 Bowman Terrace');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1093', 'Genovera', 'Wallage', 'Bridal', 24, 'gbridal2k@pen.io', '3701056767', '4828 Northport Street');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1094', 'Salmon', 'Graal', 'Raund', 28, 'sraund2l@vinaora.com', '1328134551', '919 Walton Point');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1095', 'Davide', 'Woolen', 'Spriddle', 18, 'dspriddle2m@answers.com', '7518089335', '655 Monterey Pass');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1096', 'Elnore', 'Bransby', 'Bindin', 30, 'ebindin2n@a8.net', '6592891711', '9 Spohn Lane');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1097', 'Gelya', 'Boness', 'Eggerton', 31, 'geggerton2o@cornell.edu', '3104052402', '890 Commercial Hill');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1098', 'Cobby', 'Gutans', 'Croker', 43, 'ccroker2p@utexas.edu', '4718301838', '6 Drewry Center');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1099', 'Rodrique', 'Glentworth', 'Bastick', 44, 'rbastick2q@amazon.de', '5308452940', '1 Gerald Place');
INSERT INTO usuarios (folio_usuario, nombre_usuario, apellido_paterno_usuario, apellido_materno_usuario, edad_usuario, correo_usuario, telefono_usuario, direccion_usuario) VALUES ('1100', 'Aurora', 'Hassur', 'Waycot', 43, 'awaycot2r@sfgate.com', '3262086049', '8438 Orin Pass');



INSERT INTO talleres VALUES ('CD001', 'Escuela de Código', '4 meses');
INSERT INTO talleres VALUES ('DM001', 'Diseño de modas', '2 meses');
INSERT INTO talleres VALUES ('HU001', 'Huertos Urbanos', '8 meses');
INSERT INTO talleres VALUES ('CC001', 'Cocina', '3 meses');
INSERT INTO talleres VALUES ('HR001', 'Herreria', '5 meses');
INSERT INTO talleres VALUES ('CP001', 'Carpinteria', '4 meses');
INSERT INTO talleres VALUES ('PT001', 'Pintura', '2 meses');



ALTER TABLE responsable
CHANGE direccion_responsable direccion_responsable VARCHAR(100); 
 
  
INSERT INTO responsable VALUES ('RES1', 'Angela', 'Herrera', 'Perez', '3262086049', 'awaycot2r@pilares.gob', 'Calle 5 # 8 colonia centro, azcapotzalco');
INSERT INTO responsable VALUES ('RES2', 'Miguel', 'Hernandez', 'Urbina', '5567456356', 'hernan@ pilares.gob', 'Calle pino # 18 colonia reforma, cuauhtemoc');
INSERT INTO responsable VALUES ('RES3', 'Rosa', 'Benitez', 'Salas', '3262067534', 'rosa@ pilares.gob', 'Calle centro # 5 colonia aguilera, iztapalapa');
INSERT INTO responsable VALUES ('RES4', 'Patricia', 'Torres', 'Piña', '5567564534', 'pina@pilares.gob', 'Calle morelos # 34 colonia insurgentes, gam');
INSERT INTO responsable VALUES ('RES5', 'Pedro', 'Marquez', 'Quetzal', '5678675434', 'perez@pilares.gob', 'Calle revolucion # 89 colonia pensil, miguel hidalgo');



ALTER TABLE talleristas
CHANGE direccion_tallerista direccion_tallerista VARCHAR(100);

INSERT INTO talleristas VALUES ('TALL1', 'Pedro', 'Angeles', 'Perez', '5678675445', 'pedrotall@pilares.gob', 'Calle amapolas # 89 colonia Aquiles serdab, azcapotzalco', 'CD001');
INSERT INTO talleristas VALUES ('TALL2', 'Beatriz', 'Fuentes', 'Martinez', '567786564', 'beatriztall@pilares.gob', 'Calle horcon # 34 colonia reforma social, iztapalapa', 'DM001');
INSERT INTO talleristas VALUES ('TALL3', 'Pedro', 'Salas', 'Beltran', '9988675445', 'salastall@pilares.gob', 'Calle uno # 890 colonia petroleos, gam', 'HU001');
INSERT INTO talleristas VALUES ('TALL4', 'Daniel', 'Salazar', 'Perez', '5677785445', 'danieltall@pilares.gob', 'Calle ampl garza# 19 colonia Anaxagoras, Miguel Hidalgo', 'CC001');
INSERT INTO talleristas VALUES ('TALL5', 'Bautista', 'Petronilo', 'Angeles', '5678644545', 'bautistall@pilares.gob', 'Calle raynosa # 3 colonia Patria, iztapalapa', 'HR001');
INSERT INTO talleristas VALUES ('TALL6', 'Antonio', 'Alatriste', 'Huitron', '5445675445', 'toniotall@pilares.gob', 'Calle popo # 456 colonia texpo, iztapalapa', 'CP001');
INSERT INTO talleristas VALUES ('TALL7', 'Ernesto', 'Ermita', 'Onto', '5543675445', 'ernesttall@pilares.gob', 'Calle pescadores #67 colonia oficios, gam', 'PT001');



ALTER TABLE pilares
CHANGE dirección_pilares dirección_pilares VARCHAR(100);

INSERT INTO pilares VALUES ('PIL01', 'PILARES UNO', 'calle del recreo # 25, colonia rosario, azcapotzalco', 'RES1');
INSERT INTO pilares VALUES ('PIL02', 'PILARES DOS', 'calle amores # 225, colonia reforma, Iztapalapa', 'RES2');
INSERT INTO pilares VALUES ('PIL03', 'PILARES TRES', 'calle nezaa # 3, colonia ampliacion, gam', 'RES3');
INSERT INTO pilares VALUES ('PIL04', 'PILARES CUATRO', 'calle herreros # 5, colonia revolucion, miguel hidalgo', 'RES4');
INSERT INTO pilares VALUES ('PIL05', 'PILARES CINCO', 'calle ahuehuetes # 345, colonia angeles, iztapalapa', 'RES5');


INSERT INTO tallpil VALUES ('TALL1', 'PIL04');
INSERT INTO tallpil VALUES ('TALL2', 'PIL04');
INSERT INTO tallpil VALUES ('TALL3', 'PIL01');
INSERT INTO tallpil VALUES ('TALL4', 'PIL05');
INSERT INTO tallpil VALUES ('TALL5', 'PIL03');
INSERT INTO tallpil VALUES ('TALL6', 'PIL02');
INSERT INTO tallpil VALUES ('TALL7', 'PIL05');


INSERT INTO grupo VALUES 
# TALLER, FOLIO USUARIO ,GRUPO, HORARIO;
('HU001','1095','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1012','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1004','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1005','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1006','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1007','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1008','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1009','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1010','GRUP1','10:00 A 11:00');
INSERT INTO grupo VALUES
('HU001','1011','GRUP1','10:00 A 11:00');

INSERT INTO grupo VALUES 
('CC001','1095','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1003','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1004','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1005','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1006','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1007','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1008','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1009','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1010','GRUP2','12:00 A 14:00');
INSERT INTO grupo VALUES 
('CC001','1011','GRUP2','12:00 A 14:00');

INSERT INTO grupo VALUES 
('HR001','1020','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1021','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1022','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1023','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1024','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1025','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1026','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1027','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1028','GRUP3','14:00 A 16:00');
INSERT INTO grupo VALUES 
('HR001','1029','GRUP3','14:00 A 16:00');