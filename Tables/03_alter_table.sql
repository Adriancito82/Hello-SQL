ALTER TABLE persons8
-- Añadir
ADD surname varchar(100);
-- Renombrar
ALTER TABLE persons8
RENAME COLUMN surname TO description;
-- Modificar
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);
-- Eliminar
ALTER TABLE persons8
DROP COLUMN description;
