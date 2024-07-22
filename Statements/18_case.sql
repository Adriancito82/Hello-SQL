SELECT *,
CASE
	WHEN age >= 18 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS 'Mayor o Menor de Edad'
FROM users;

SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS 'Mayor o Menor de Edad'
FROM users;
