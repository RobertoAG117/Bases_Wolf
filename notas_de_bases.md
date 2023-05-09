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













