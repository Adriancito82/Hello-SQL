CREATE VIEW v_adult_users AS
SELECT name, age FROM users
WHERE age >= 18;

SELECT * FROM v_adult_users;

-- Eliminar View
DROP VIEW v_adult_users;
