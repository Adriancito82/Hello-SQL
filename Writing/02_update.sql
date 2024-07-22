UPDATE users SET age = '21' WHERE user_id = 7;

/* Siempre hay que poner una condición para especificar lo que queremos cambiar,
ya que si no cambiariamos el campo de todos los usuarios.
*/

UPDATE users SET age = 39, init_datel = '2023-10-12' WHERE user_id = 11;

-- En la parte de arriba el campo de edad no hace falta ponerlo entre comillas ya que es un número pero lo detecta igual.
