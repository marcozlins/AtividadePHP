   DROP DATABASE IF EXISTS aplication;

-- Cria o banco de dados usando UTF-8 e bustas 'case-insensitive':
CREATE DATABASE aplication CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Seleciona o banco de dados:
USE aplication;


   Create table users (
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_avatar VARCHAR(255) NOT NULL,
    user_birth DATE NOT NULL,
    user_bio TEXT,
    user_type ENUM('admin', 'author', 'moderator', 'user') DEFAULT 'user',
    user_status ENUM('on', 'off', 'deleted') DEFAULT 'on'
);