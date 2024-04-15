CREATE DOMAIN d_nomeProprio VARCHAR(40);
CREATE DOMAIN d_telefone VARCHAR(15);
CREATE DOMAIN d_moedas DECIMAL(15,2);


CREATE TABLE ingredientes(
    idIngrediente SERIAL PRIMARY KEY NOT NULL,
    unidadeMedida VARCHAR (10) NOT NULL,
    ingrediente VARCHAR (20) NOT NULL
    );


CREATE TABLE pizzarias(
    idPizzaria SERIAL PRIMARY KEY NOT NULL,
    nome d_nomeProprio NOT NULL,
    telefone d_telefone NOT NULL,
    endereco VARCHAR (50) NOT NULL
);


-- tabelas secundarias, possui atritubutos normais porém tem um relacionamento de dependencia com outra tabela, 


CREATE TABLE cardapios(
    idCardapio SERIAL PRIMARY KEY NOT NULL,
    descricao VARCHAR(15) NOT NULL,
    idPizzaria INTEGER NOT NULL, --FK
    FOREIGN KEY (idPizzaria) REFERENCES pizzarias(idPizzaria)
);

