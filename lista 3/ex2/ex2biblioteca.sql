-- Tabela AUTORES
CREATE TABLE AUTORES (
    autor_id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL
);

-- Tabela LIVROS
CREATE TABLE LIVROS (
    livro_id SERIAL PRIMARY KEY NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    FOREIGN KEY (editora_id) REFERENCES EDITORAS(editora_id),
    FOREIGN KEY (categoria_id) REFERENCES CATEGORIAS(categoria_id)
    
);


-- Tabela CLIENTES
CREATE TABLE CLIENTES (
    cliente_id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(40) NOT NULL

);

-- Tabela EDITORAS
CREATE TABLE EDITORAS (
    editora_id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(30)
);

-- Tabela CATEGORIAS
CREATE TABLE CATEGORIAS (
    categoria_id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(20) NOT NULL
);

-- Tabela EMPRESTIMOS
CREATE TABLE EMPRESTIMOS (
    Numero_Exemplar INTEGER KEY PRIMARY NOT NULL,
    Valor_Diário_multa REAL NOT NULL,
    data_devolucao DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES CLIENTES(cliente_id),
    FOREIGN KEY (bibliotecaria_estagiaria_id) REFERENCES BIBLIOTECARIAS_ESTAGIARIAS(bibliotecaria_estagiaria_id),
    FOREIGN KEY (livro_id) REFERENCES LIVROS(livro_id)
);

-- Tabela BIBLIOTECARIAS_ESTAGIARIAS
CREATE TABLE BIBLIOTECARIAS_ESTAGIARIAS (
    bibliotecaria_estagiaria_id SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(30) NOT NULL,
    instituicao VARCHAR (30) NOT NULL
);

-- Tabela ESTANTES
CREATE TABLE ESTANTES (
    estante_id SERIAL PRIMARY KEY NOT NULL
    
);

-- Tabela de relacionamento Autoria
CREATE TABLE Autoria (
    FOREIGN KEY (livro_id) REFERENCES LIVROS(livro_id),
    FOREIGN KEY (autor_id) REFERENCES AUTORES(autor_id)
);

-- Tabela de relacionamento Disposicao
CREATE TABLE Disposicao (
    FOREIGN KEY (categoria_id) REFERENCES CATEGORIAS(categoria_id),
    FOREIGN KEY (estante_id) REFERENCES ESTANTES(estante_id)
);

-- Tabela de relacionamento Organizacao
CREATE TABLE Organizacao (
    FOREIGN KEY (cliente_id) REFERENCES CLIENTES(cliente_id),
    FOREIGN KEY (livro_id) REFERENCES LIVROS(livro_id)
);