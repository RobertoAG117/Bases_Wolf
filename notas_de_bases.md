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


















