#Bases


### diá 27 de abril

numero de duplas se llama cardinalidad

se pueden tener diversas entidades
cada nueva entidad tendra un nuevo atributo (caracteristicas unicas)
dependiendo del tipo de relación que tenga cada atributo sería la interaccion
por ejemplo de 1 a muchos o de muchos a muchos o de muchos a 1 

dependiendo el modelo entidad relacion se hace la conexion de las entidades

los rectangulos se representan con rectangulos


dentro del diagrama de flujo es importante usar verbos para determinar la accion que hace la base
debemos usar guines bajos en lugar de espacios al nombrar las entidades

la entidad sera la clave primaria, 
para cuestiones practicas vamos a colorear con una bolita negra las llaves primaria
### bases día 02/05
link de la base del día 02
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/4#&togetherjs=ijVial699E
pagina para generar datos
https://mockaroo.com/
pagina con el back up de la base
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/4

### día 03/05/2023
bases realacionales
líneas de comandos de sql
el primer comando es el dll para la creación (CREATE DATA BASE) dónde se crea el espacio de la base
para borrar toda la base es con (DROP DATA BASE)
para crea tablas es con (CREATE TABLE "junto con el nombre") CREATE TABLE (NOMBRE VARCHAR(10), APELLIDO VARCHAR (10));
ES  importante visualizar la base como un excel para llevar un orden en esta
cada ; se va a ejecutar algo así que es importante dónde se pone el  ; por que solo corre hasta dónde se pone este 
dependiendo de la versión de sql se tienen diferentes comando o sintaxis 

con el mismo comando de CREATE TABLE  se crean todas las tablas pero debe seguir la misma sintaxis solo el último va solo
una vez creadas las tablas usamos drop para borrar contenido o las mismas tablas
si escribimos alter usuarios entramos a la tabla usuaios y modificamos algo, con add agregamos atributos
con change cambiamos nombres o logitud de datos (para cambiar el tipo de dato se debe renombrar el dato)
los importantes son 
ALTER  (TIPO DE TABLA O TABLA QUE QUEREMOS MODIFICAR O ELIMINAR)
CREATE
CHANGE/DROP

COMANDOS DML
BASICAMENTE DEBEMOS DE CAMBIAR TODO CON COMANDOS
EJEMPLO 
INSERT INTO (INSERTAR EN ... QUE TABLA)
INSERT INTO usuarios (...)

podemos usarlo tambien como 
INSERT INTO (nombre, folio, num)
/se puede cambiar como gustes siempre y cuando se le indique que se cambia el orden de los datos/

la sintaxis será muy parecida a phyton y es ingles completamente 

se debe normalizar una base para dejarla al 100%, sin datos sucios, nulos, vacios, o algún otro problema


LAS CONSULTAS USAREMOS:                 COMANDOS:
* Qué                                   SELECT
* Dónde                                 FROM
* Filtro o caracteristica especial      LIMIT 10

Ejemplo de uso
USE pilares;
SELECT * FROM usuarios;

![image](https://user-images.githubusercontent.com/125500565/236010744-1ace09b8-5e81-433c-992b-59336cc0824e.png)

USE pilares;
SELECT * FROM usuarios limit 10;
#mostramos toda la tabla
(muestra solo 10 columnas con un filtro)


podemos usar un filtro para buscar por edad:
USE pilares;
#LIMIT permite meter un filtro de cuantas consultas queremos realizar
#SELECT * FROM usuarios;
#mostramos toda la tabla
SELECT * FROM usuarios WHERE edad_usuario=45;
![image](https://user-images.githubusercontent.com/125500565/236013090-863e62f0-a228-4f56-8944-ba64256fb416.png)

para poner mayor o igual que 45 años es:
USE pilares;
#LIMIT permite meter un filtro de cuantas consultas queremos realizar
#SELECT * FROM usuarios;
#mostramos toda la tabla
SELECT * FROM usuarios WHERE edad_usuario>=45;
![image](https://user-images.githubusercontent.com/125500565/236013303-a5f94f6d-4b13-4e98-bbe3-f9a4ad47b684.png)

operador relacionales para busquedas
<
>
<=
>=
=
 
Permite buscar por nombre y los nombres de los usuarios
USE pilares;
#LIMIT permite meter un filtro de cuantas consultas queremos realizar
#SELECT * FROM usuarios;
#mostramos toda la tabla
#SELECT * FROM usuarios WHERE edad_usuario>=45;
SELECT nombre_usuario FROM usuarios;
SELECT folio_usuario FROM usuarios WHERE nombre_usuario='Quinn';
![image](https://user-images.githubusercontent.com/125500565/236014378-008aa7ad-5e37-4f33-bef8-9b781fac4694.png)


en esta captura permite renombrar la columna con x nombre
USE pilares;
#LIMIT permite meter un filtro de cuantas consultas queremos realizar
#SELECT * FROM usuarios;
#mostramos toda la tabla
#SELECT * FROM usuarios WHERE edad_usuario>=45;
SELECT nombre_usuario FROM usuarios;
SELECT folio_usuario as 'folio de Quinn' FROM usuarios WHERE nombre_usuario='Quinn';

![image](https://user-images.githubusercontent.com/125500565/236014934-2ae6b17a-2e43-47aa-8013-3140f7494f07.png)


hacemos un filtro para hacer una consulta solo del folio, nombre, correo y telefono
USE pilares;
#LIMIT permite meter un filtro de cuantas consultas queremos realizar
#SELECT * FROM usuarios;
#mostramos toda la tabla
#SELECT * FROM usuarios WHERE edad_usuario>=45;
#SELECT nombre_usuario FROM usuarios;
#SELECT folio_usuario as 'folio de Quinn' FROM usuarios WHERE nombre_usuario='Quinn';

SELECT folio_usuario, nombre_usuario, telefono_usuario, correo_usuario FROM usuarios LIMIT 10;

![image](https://user-images.githubusercontent.com/125500565/236016039-19f99101-2afa-48b8-8243-e3712ea3d7e1.png)

link de las consultas que se realizaron el día 03
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/7




ACTIVIDAD 6 LINK DE RESPALDO
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/7



CONSULTAS DEL DIA 09/05/2023 
DE LA BASE DE PILARES Y SUS RESPECTIVAS CONSULTAS
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/10

CONSULTAS DEL DIA 09 Y 05 DE LA BASE CON LA EDAD Y TALLERISTAS
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/12




tenemos deversos comandos para hacer diversas cosas como por ejemplo 
drop para borrar toda la base o toda la tablas 
delete para borrar algo en especifico 

existen diversas funciones pero por lo general va de la mano junto con lo que se tenga que realizar 
dependiendo de la fucion tenemos diversas paralbras clave
-------------------
(KEYWORDS)
GROUP BY    AGRUPA EN BASE A LO QUE SE LE ORDENA 
ORDER BY 
------------------
FUNCIONES (SON PARA LOS ARGUMENTOS QUE VAN A EVALUAR)
COUNT()     VA CONTAR ALGO POR EJEMPLO EL NUMERO DE TALLERES O DE ALUMNOS 
MAX()       VA S BUSCAR EL MAXIMO
MIN()       VA A BUSVAR EL MINIMO
LENGHT()    BUSCA LA LONGITUD DE ALGO EN ES ESPECIFICO COMO CONTAR EL NUMERO DE LETRAS
AVG()       
-------------------------
SE PUEDEN COMBINAR LOS KEYWORDS Y LAS FUNCIONES PARA OBTENER BUSQUEDAS MAS PRECISAS
POR EJEMPLO PARA OBENER EL PRECIO MAS CARO POR MARCA SERIA 
COUNT MAX PRECIO GROUP BY MARCA

codigo de ejemplo de consulta para una agrupacion y un conteo al mismo tiempo

SELECT nombre_taller, COUNT(folio_usuario) AS cuantos_usuarios_tiene_el_taller
FROM usuarios INNER JOIN grupo
ON usuarios.folio_usuario = grupo.folio_usuario1
INNER JOIN talleres
ON talleres.codigo_taller = grupo.codigo_taller1
GROUP BY codigo_taller;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/99125dfb-ccac-4514-9c15-b09f823ddbfb)


PARA VER EL NUMERO DE TALLERES AUN QUE NO TENGAN ALUMNOS ES
SELECT nombre_taller, COUNT(folio_usuario) AS cuantos_usuarios_tiene_el_taller
FROM usuarios RIGHT JOIN grupo
ON usuarios.folio_usuario = grupo.folio_usuario1
RIGHT JOIN talleres
ON talleres.codigo_taller = grupo.codigo_taller1
GROUP BY codigo_taller;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/91c7f33a-f21a-42cb-9929-271143592b6f)

PARA ORDENARLO SERÍA 
PARA  BUSCAR POR TALLERISTAS EN LOS PIALRES ES
SELECT nombre_pilares, COUNT(folio_tallerista) AS cuantos_talleristas_tenemos
FROM pilares INNER JOIN tallpil
ON pilares.codigo_pilares = tallpil.codigo_pilares1
INNERs JOIN talleristas
ON talleristas.folio_tallerista = tallpil.folio_tallerista1
GROUP BY codigo_pilares;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/e9f2ec23-ff26-4002-915b-0c6ac065c48c)


SELECT nombre_pilares, nombre_taller
FROM pilares INNER JOIN tallpil
ON pilares.codigo_pilares = tallpil.codigo_pilares1
INNER JOIN talleristas
ON talleristas.folio_tallerista = tallpil.folio_tallerista1
INNER JOIN talleres ON talleres.codigo_taller=talleristas.codigo_taller1;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/2d979dd7-9964-4098-8b8c-0d98ca480ad5)

para hacer el conteo de los talleristas en los pialres se hace de la siguinte manera
SELECT nombre_pilares, count (nombre_taller)
FROM pilares INNER JOIN tallpil
ON pilares.codigo_pilares = tallpil.codigo_pilares1
INNER JOIN talleristas
ON talleristas.folio_tallerista = tallpil.folio_tallerista1
INNER JOIN talleres ON talleres.codigo_taller=talleristas.codigo_taller1
GROUP BY codigo_pilares;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/1667f32d-7b5d-4aab-941c-10b7091807a0)

SELECT nombre_pilares, count (folio_usuario) AS numeros_de_usuarios_por_pilares
FROM pilares 
INNER JOIN tallpil ON pilares.codigo_pilares = tallpil.codigo_pilares1
INNER JOIN talleristas ON talleristas.folio_tallerista = tallpil.folio_tallerista1
INNER JOIN talleres ON talleres.codigo_taller = talleristas.codigo_taller1
INNER JOIN grupo ON grupo.codigo_taller1 = talleres.codigo_taller
INNER JOIN usuarios ON usuarios.folio_usuario = grupo.folio_usuario1
GROUP BY nombre_pilares;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/01c4cb81-3c0e-459b-a157-858bafda1c66)


Hacemos un conteo de los usuarios que estan en algún pilar de forma ascendente y ordenandolo
SELECT nombre_pilares, count (folio_usuario) AS numeros_de_usuarios_por_pilares
FROM pilares 
left JOIN tallpil ON pilares.codigo_pilares = tallpil.codigo_pilares1
left JOIN talleristas ON talleristas.folio_tallerista = tallpil.folio_tallerista1
left JOIN talleres ON talleres.codigo_taller = talleristas.codigo_taller1
left JOIN grupo ON grupo.codigo_taller1 = talleres.codigo_taller
left JOIN usuarios ON usuarios.folio_usuario = grupo.folio_usuario1
GROUP BY nombre_pilares
ORDER BY COUNT(folio_usuario) ASC;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/f15c8e5e-4118-4cfd-b065-b7ffd8cd919c)

Actualizado al día 11/05/23 la base con sus respectivas consultas
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/14


Condicionales de Bases día 18/05/23
USE pilares;
#condicionante si es meyor se pone que es mayor, si es mayor se pone que es  menor
SELECT nombre_usuario, IF(edad_usuario>=18, "es mayor de edad", "es menor de edad")AS Edad
FROM usuarios;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/1aa40229-839e-4774-90b3-a3a6f32a8b3e)

#condicionante si es meyor se pone su celular, si es mayor se pone su apeliido paterno
SELECT folio_usuario, IF(edad_usuario>=18, apellido_paterno_usuario , telefono_usuario)
FROM usuarios;
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/dfe57d80-a576-4f34-bcd4-8b2105c133bc)

Para los ejemplos de triggers veremos un par de ejemplos
se programan para que en algun momento se activen
regularmente se hace cuando se actualizan los datos, por lo que podría guardar datos cuando alguien modifique algo. como en actualizaciones de usuarios o datos de estos, incluso cuando se eliminan o modifican, dependiendo de que se le pida que hagan. (se activan hasta que se le diga, no se ven, causan ejemplos en las tablas)

Se pueden usar diversas herramientas, en la estructura pondemos un trigger
Para crear un TRIGGER debemos crear primero la tablas en la que se guardaran los registro en este caso definimos una clave primaria y un par de datos extras como la fecha y la accion a hacer, en este caso ponermos que el registro sea aautomatico para que no tengamos que estarlo actualizando manualmente

  #Trigger
 CREATE TABLE registro(
  id_registro INT AUTO_INCREMENT PRIMARY KEY,
  accion VARCHAR(200),
  fecha TIMESTAMP
  );
 Despues tenemos que realizar la creacion del trigger como tal 
 
DELIMITER //
CREATE TRIGGER insertar_datos BEFORE INSERT ON grupo
FOR EACH ROW BEGIN
INSERT INTO registro(accion) VALUES("se inscribio un usuario a un grupo");
END //
DELIMITER ; 

HACEMOS UN SEGUNDO TRIGGER PARA ACTUALIZAR LOS DATOS DE LOS USUARIOS
INSERT INTO grupo VALUES('HR001','1029','GRUP3','14:00 A 16:00');
  
DELIMITER //
CREATE TRIGGER actualizar_datos BEFORE UPDATE ON usuarios
FOR EACH ROW BEGIN
INSERT INTO registro(accion) VALUES("se actualizo un usuario");
END //
DELIMITER ;

UPDATE usuarios
SET 	NOMBRE_USUARIO="GERARDO"
WHERE folio_usuario=1098;
 
![image](https://github.com/RobertoAG117/Bases_Wolf/assets/125500565/3e72c66f-b364-4f68-9736-a98c5d43f2a9)
Link de la base con sus respectivas consultas y triggers
https://www.db-fiddle.com/f/9TSrRAAqxv57qr1NeMRoBd/15


