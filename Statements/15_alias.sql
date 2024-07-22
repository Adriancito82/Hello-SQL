SELECT name, init_datel AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 18 AND 50;

--Puedes cambiar la descripción para facilitar la visualizacion de las tablas.

SELECT CONCAT('Nombre: ', name, ' Apellidos: ', surname) AS 'Nombre Completo:' FROM users;
