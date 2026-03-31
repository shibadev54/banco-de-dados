CREATE DATABASE locadora;
USE locadora;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao TEXT
);

CREATE TABLE Status_Veiculo (
    id_status INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100),
    placa VARCHAR(10) UNIQUE,
    id_categoria INT,
    id_status INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_status) REFERENCES Status_Veiculo(id_status)
);

CREATE TABLE Contrato (
    id_contrato INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATE,
    data_fim DATE,
    id_cliente INT,
    id_funcionario INT,
    id_veiculo INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);

CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2),
    data_pagamento DATE,
    id_contrato INT,
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato)
);

CREATE TABLE Multa (
    id_multa INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2),
    motivo TEXT,
    id_contrato INT,
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato)
);

CREATE TABLE Historico_Quilometragem (
    id_hist INT AUTO_INCREMENT PRIMARY KEY,
    quilometragem INT,
    data_registro DATE,
    id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);

CREATE TABLE Manutencao (
    id_manutencao INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    data_manutencao DATE,
    custo DECIMAL(10,2),
    id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);

CREATE TABLE Devolucao (
    id_devolucao INT AUTO_INCREMENT PRIMARY KEY,
    data_devolucao DATE,
    id_contrato INT,
    id_veiculo INT,
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);

SELECT * FROM Cliente;
SELECT * FROM Funcionario;
SELECT * FROM Categoria;
SELECT * FROM Status_Veiculo;
SELECT * FROM Veiculo;
SELECT * FROM Contrato;
SELECT * FROM Pagamento;
SELECT * FROM Multa;
SELECT * FROM Historico_Quilometragem;
SELECT * FROM Manutencao;
SELECT * FROM Devolucao;
