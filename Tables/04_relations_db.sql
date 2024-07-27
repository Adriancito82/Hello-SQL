-- 1:1
CREATE TABLE dni(
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE (dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );

-- 1:N
CREATE TABLE companies(
	company_id int AUTO_INCREMENT PRIMARY KEY,
	name varchar(100) NOT NULL
);

ALTER TABLE users
ADD company_id int;

/*En el codigo siguiente estamos haciendo que varios usuarios puedan estar relacionados con la misma
compañía y no al reves*/

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

-- N:M
CREATE TABLE languages(
	languages_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

CREATE TABLE users_languages(
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

-- INSERT
-- 1:1
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number, user_id) VALUES (44444444, 4);

-- 1:N
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');
INSERT INTO companies (name) VALUES ('Microsoft');

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 1 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 2;
UPDATE users SET company_id = 3 WHERE user_id = 5;
UPDATE users SET company_id = 2 WHERE user_id = 10;

-- N:M
INSERT INTO languages (name) VALUE ('Swift');
INSERT INTO languages (name) VALUE ('JavaScript');
INSERT INTO languages (name) VALUE ('React');
INSERT INTO languages (name) VALUE ('PHP');
INSERT INTO languages (name) VALUE ('Python');

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 4);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 4);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (3, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (3, 4);
INSERT INTO users_languages (user_id, language_id) VALUES (4, 4);
INSERT INTO users_languages (user_id, language_id) VALUES (4, 5);
