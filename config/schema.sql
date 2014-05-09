-- Integrantes: Daniel Andruvetto - Eduardo Benmergui - Facundo Molina - Lucas Palacios

DROP TABLE IF EXISTS users; -- Usuarios
CREATE TABLE users(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(60) UNIQUE,
    first_name VARCHAR(56),
    last_name VARCHAR(56)
);

DROP TABLE IF EXISTS vehicles; -- Vehículos
CREATE TABLE vehicles(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	brand VARCHAR(20),
	model VARCHAR(20),
	year VARCHAR(4),
	color VARCHAR(20), 
	user_id INT(11) 
);

DROP TABLE IF EXISTS posts; -- Avisos
CREATE TABLE posts(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(30),	
	description TEXT,
	user_id INT(11),
	vehicle_id INT(11) UNIQUE,
	created_at DATETIME 
);
