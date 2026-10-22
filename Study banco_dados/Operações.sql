-- Editoras
INSERT INTO Editora (nome_editora, local_publicacao) VALUES 
('Companhia das Letras', 'São Paulo'),
('Rocco', 'Rio de Janeiro'),
('Intrínseca', 'Rio de Janeiro');

-- Autores
INSERT INTO Autor (nome_autor) VALUES 
('Machado de Assis'),
('J.K. Rowling'),
('Neil Gaiman'),
('Terry Pratchett'),
('George Orwell');

-- Livros
INSERT INTO Livro (ISBN, titulo, ano_publicacao, genero, numero_paginas, Editora_ID) VALUES 
('978-1111', 'Dom Casmurro', 1899, 'Romance', 256, 1),
('978-2222', 'Harry Potter e a Pedra Filosofal', 1997, 'Fantasia', 223, 2),
('978-3333', 'Belas Maldições', 1990, 'Fantasia', 352, 3),
('978-4444', '1984', 1949, 'Ficção Científica', 328, 1),
('978-5555', 'Deuses Americanos', 2001, 'Fantasia', 464, 3),
('978-6666', 'O Alienista', 1882, 'Conto', 96, 1);

-- Associação Livro_Autor (Belas Maldições tem 2 autores: Neil Gaiman e Terry Pratchett)
INSERT INTO Livro_Autor (ISBN, Autor_ID) VALUES 
('978-1111', 1),
('978-2222', 2),
('978-3333', 3), 
('978-3333', 4),
('978-4444', 5),
('978-5555', 3),
('978-6666', 1);

-- Clientes
INSERT INTO Cliente (nome_cliente, endereco, email) VALUES 
('Ana Silva', 'Rua A, 123', 'ana@email.com'),
('Carlos Souza', 'Av B, 456', 'carlos@email.com'),
('Mariana Lima', 'Rua C, 789', 'mariana@email.com'),
('João Costa', 'Rua D, 101', 'joao@email.com');

-- Empréstimos
INSERT INTO Emprestimo (data_emprestimo, data_devolucao, Cliente_ID, ISBN) VALUES 
('2023-10-01', '2023-10-15', 1, '978-1111'),
('2023-10-05', '2023-10-20', 2, '978-3333'),
('2023-10-10', NULL, 3, '978-4444');