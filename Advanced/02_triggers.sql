CREATE TABLE `hello_mysql`.`email_history` (
  `email_history_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`email_history_id`),
  UNIQUE INDEX `idemail_history_UNIQUE` (`email_history_id` ASC) VISIBLE);


delimiter |
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END;

UPDATE users SET email = 'Sara_82@gmail.com' WHERE user_id = 3;

-- Eliminar el trigger
DROP TRIGGER tg_email;
