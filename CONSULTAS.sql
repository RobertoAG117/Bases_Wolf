USE pilares;
LIMIT permite meter un filtro de cuantas consultas queremos realizar
SELECT * FROM usuarios;

mostramos toda la tabla
SELECT * FROM usuarios WHERE edad_usuario>=45;
SELECT nombre_usuario FROM usuarios;
SELECT folio_usuario as 'folio de Quinn' FROM usuarios WHERE nombre_usuario='Quinn';

SELECT folio_usuario, nombre_usuario, telefono_usuario, correo_usuario FROM usuarios LIMIT 10;

SELECT nombre_usuario, nombre_taller 
FROM usuarios LEFT JOIN grupo ON usuarios.folio_usuario = grupo.folio_usuario1
LEFT JOIN talleres ON talleres.codigo_taller = grupo.codigo_taller1;

SELECT nombre_usuario, nombre_taller 
FROM usuarios RIGHT JOIN grupo ON usuarios.folio_usuario = grupo.folio_usuario1
RIGHT JOIN talleres ON talleres.codigo_taller = grupo.codigo_taller1;

SELECT nombre_usuario, nombre_taller 
FROM usuarios INNER JOIN grupo ON usuarios.folio_usuario = grupo.folio_usuario1
INNER JOIN talleres ON talleres.codigo_taller = grupo.codigo_taller1;