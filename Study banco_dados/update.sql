-- Altere o e-mail de um cliente
UPDATE Cliente SET email = 'ana.nova@email.com' WHERE Cliente_ID = 1;
SELECT * FROM Cliente WHERE Cliente_ID = 1;

-- Atualize o endereço de um cliente
UPDATE Cliente SET endereco = 'Av Nova, 999' WHERE Cliente_ID = 2;
SELECT * FROM Cliente WHERE Cliente_ID = 2;

-- Corrija o gênero de um livro
UPDATE Livro SET genero = 'Ficção Distópica' WHERE ISBN = '978-4444';
SELECT * FROM Livro WHERE ISBN = '978-4444';

-- Altere a data de devolução de um empréstimo
UPDATE Emprestimo SET data_devolucao = '2023-10-25' WHERE Emprestimo_ID = 3;
SELECT * FROM Emprestimo WHERE Emprestimo_ID = 3;