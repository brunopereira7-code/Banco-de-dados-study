CREATE DATABASE IF NOT EXISTS sistema_biblioteca;
USE sistema_biblioteca;

CREATE TABLE Editora (
    Editora_ID INT AUTO_INCREMENT PRIMARY KEY,
    nome_editora VARCHAR(100) NOT NULL,
    local_publicacao VARCHAR(100)
);

CREATE TABLE Autor (
    Autor_ID INT AUTO_INCREMENT PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL
);

CREATE TABLE Cliente (
    Cliente_ID INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    email VARCHAR(100)
);

CREATE TABLE Livro (
    ISBN VARCHAR(20) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano_publicacao INT,
    genero VARCHAR(50),
    numero_paginas INT,
    Editora_ID INT,
    FOREIGN KEY (Editora_ID) REFERENCES Editora(Editora_ID)
);

CREATE TABLE Livro_Autor (
    ISBN VARCHAR(20),
    Autor_ID INT,
    PRIMARY KEY (ISBN, Autor_ID),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (Autor_ID) REFERENCES Autor(Autor_ID)
);

CREATE TABLE Emprestimo (
    Emprestimo_ID INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    Cliente_ID INT,
    ISBN VARCHAR(20),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);