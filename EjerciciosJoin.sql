1) Una empresa tiene registrados a sus clientes en una tabla llamada clientes. También tiene una tabla "provincias" donde registra los nombres de las provincias. En base a los datos cargados aquí, Queremos saber de qué provincias tenemos clientes, sin repetir el nombre de la provincia: las consultas que permitan responder las siguientes preguntas:

a.¿Qué provincias no tenemos clientes?
SELECT provincias.nombre FROM provincias
LEFT JOIN clientes
ON clientes.codigoprovincia = provincias.codigo
WHERE clientes.codigoprovincia IS null;

b.¿Qué provincias tienen clientes? Pero sin repetir el nombre de la provincia. Un tip, vas a necesitar la sentencia distinct
SELECT DISTINCT provincias.nombre FROM provincias
LEFT JOIN clientes
ON clientes.codigoprovincia = provincias.codigo
WHERE clientes.codigoprovincia;