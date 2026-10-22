-- Cadastrar cliente e autor de teste
INSERT INTO Cliente (nome_cliente, endereco, email) VALUES ('Cliente Teste', 'Rua X', 'teste@email.com');
INSERT INTO Autor (nome_autor) VALUES ('Autor Teste');

-- Excluir cliente e autor de teste (Substitua 5 e 6 pelos IDs reais gerados)
DELETE FROM Cliente WHERE nome_cliente = 'Cliente Teste';
DELETE FROM Autor WHERE nome_autor = 'Autor Teste';

-- Consultar para comprovar
SELECT * FROM Cliente;
SELECT * FROM Autor;