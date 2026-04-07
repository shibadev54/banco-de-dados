CREATE DATABASE IF NOT EXISTS meu_primeiro_bd;
USE meu_primeiro_bd;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50),
    idade INT
);
INSERT INTO usuarios (nome, email, idade) VALUES ('Ana Silva', 'ana@email.com', 25);
INSERT INTO usuarios (nome, email, idade) VALUES ('Bruno Costa', 'bruno@email.com', 17);
INSERT INTO usuarios (nome, email, idade) VALUES ('Carla Souza', 'carla@email.com', 32);
SELECT * FROM usuarios;
SELECT nome, idade FROM usuarios WHERE idade >= 18;
SELECT * FROM usuarios WHERE email = 'ana@email.com';
