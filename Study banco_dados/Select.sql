-- Todos os registros da tabela Livro
SELECT * FROM Livro;

-- Título e gênero dos livros
SELECT titulo, genero FROM Livro;

-- Nome e e-mail de todos os clientes
SELECT nome_cliente, email FROM Cliente;

-- Livros publicados a partir de 2020 (Exemplo usando 1990 devido à massa de dados, ajuste conforme necessário)
SELECT * FROM Livro WHERE ano_publicacao >= 1990;

-- Títulos dos livros em ordem alfabética
SELECT titulo FROM Livro ORDER BY titulo ASC;

-- Autores, exibindo somente o nome
SELECT nome_autor FROM Autor;

-- Editoras com local de publicação "São Paulo"
SELECT * FROM Editora WHERE local_publicacao = 'São Paulo';

-- Empréstimos realizados (data do empréstimo e devolução)
SELECT data_emprestimo, data_devolucao FROM Emprestimo;