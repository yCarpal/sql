INSERT INTO AUTORES (nome) VALUES
    ('Stephen King'),
    ('J.K. Rowling'),
    ('George Orwell'),
    ('Agatha Christie'),
    ('Haruki Murakami');

-- Adicionando dados à tabela EDITORAS
INSERT INTO EDITORAS (nome) VALUES
    ('Editora A'),
    ('Editora B'),
    ('Editora C'),
    ('Editora D'),
    ('Editora E');

-- Adicionando dados à tabela CATEGORIAS
INSERT INTO CATEGORIAS (nome) VALUES
    ('Ficção'),
    ('Não Ficção'),
    ('Romance'),
    ('Suspense'),
    ('Fantasia');

-- Adicionando dados à tabela CLIENTES
INSERT INTO CLIENTES (nome) VALUES
    ('Maria'),
    ('João'),
    ('Ana'),
    ('Pedro'),
    ('Carla');

-- Adicionando dados à tabela LIVROS
INSERT INTO LIVROS (titulo, editora_id, categoria_id) VALUES
    ('It', 1, 1),
    ('Harry Potter e a Pedra Filosofal', 2, 3),
    ('1984', 3, 1),
    ('Assassinato no Expresso Oriente', 4, 4),
    ('Norwegian Wood', 5, 5);

-- Adicionando dados à tabela EMPRESTIMOS
INSERT INTO EMPRESTIMOS (numero_exemplar, valor_diario_multa, data_devolucao, cliente_id, bibliotecaria_estagiaria_id, livro_id) VALUES
    (1, 10.50, '2024-05-20', 1, 1, 1),
    (2, 8.75, '2024-05-18', 2, 2, 2),
    (3, 12.00, '2024-05-25', 3, 3, 3),
    (4, 9.25, '2024-05-23', 4, 1, 4),
    (5, 11.00, '2024-05-30', 5, 2, 5);

-- Adicionando dados à tabela BIBLIOTECARIAS_ESTAGIARIAS
INSERT INTO BIBLIOTECARIAS_ESTAGIARIAS (nome, instituicao) VALUES
    ('Laura', 'Universidade X'),
    ('Pedro', 'Universidade Y'),
    ('Mariana', 'Universidade Z'),
    ('Luiz', 'Universidade W'),
    ('Fernanda', 'Universidade V');

-- Adicionando dados à tabela ESTANTES
INSERT INTO ESTANTES DEFAULT VALUES;

-- Adicionando dados à tabela Autoria
INSERT INTO Autoria (livro_id, autor_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

-- Adicionando dados à tabela Disposicao
INSERT INTO Disposicao (categoria_id, estante_id) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1);

-- Adicionando dados à tabela Organizacao
INSERT INTO Organizacao (cliente_id, livro_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);