CREATE DOMAIN d_nome VARCHAR(40);
CREATE DOMAIN d_cpf CHAR(11);
CREATE DOMAIN d_fone CHAR(10);
CREATE DOMAIN d_modelo VARCHAR(50);
CREATE DOMAIN d_cor VARCHAR(30);
CREATE DOMAIN d_descricao VARCHAR(100);
CREATE DOMAIN d_cnpj CHAR(14);
CREATE DOMAIN d_rua VARCHAR(70);
CREATE DOMAIN d_cep CHAR(8);

CREATE TABLE regioes (
    id_regiao SERIAL PRIMARY KEY,
    nome d_nome NOT NULL
);

CREATE TABLE vendedores (
    cpf d_cpf PRIMARY KEY,
    nome d_nome NOT NULL,
    telefone d_fone NOT NULL
);

CREATE TABLE veiculos (
    placa SERIAL PRIMARY KEY,
    ano DATE NOT NULL,
    modelo d_modelo NOT NULL,
    cor d_cor NOT NULL
);

CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    valor_custo DECIMAL(5,2) NOT NULL
);

CREATE TABLE telefone (
    telefone d_fone PRIMARY KEY
);

CREATE TABLE percursos (
    id_percurso SERIAL PRIMARY KEY,
    descricao d_descricao NOT NULL,
    id_regiao INTEGER NOT NULL,
    FOREIGN KEY (id_regiao) REFERENCES regioes (id_regiao)
);

CREATE TABLE responsavel (
    cpf d_cpf PRIMARY KEY,
    id_percurso INTEGER NOT NULL,
    FOREIGN KEY (cpf) REFERENCES vendedores (cpf),
    FOREIGN KEY (id_percurso) REFERENCES percursos (id_percurso)
);

CREATE TABLE pontos_estrategicos (
    id_ponto SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    id_percurso INTEGER NOT NULL,
    FOREIGN KEY (id_percurso) REFERENCES percursos (id_percurso)
);

CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome_cliente d_nome NOT NULL,
    cpd_cnpj d_cnpj UNIQUE,
    telefone d_fone NOT NULL,
    rua d_rua NOT NULL,
    numero INTEGER NOT NULL,
    complemento d_rua,
    bairro d_rua,
    cep d_cep NOT NULL,
    FOREIGN KEY (telefone) REFERENCES telefone (telefone)
);

CREATE TABLE notas_fiscais (
    codigo_nota SERIAL PRIMARY KEY,
    cpf d_cpf,
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (cpf) REFERENCES vendedores (cpf),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

CREATE TABLE itens (
    seq_item SERIAL PRIMARY KEY,
    quantidade INTEGER NOT NULL,
    valor_unitario DECIMAL(7,2) NOT NULL,
    codigo_nota INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    FOREIGN KEY (codigo_nota) REFERENCES notas_fiscais (codigo_nota),
    FOREIGN KEY (id_produto) REFERENCES produtos (id_produto)
);

CREATE TABLE alocam (
    cpf d_cpf,
    placa INTEGER NOT NULL,
    dia DATE NOT NULL,
    PRIMARY KEY (cpf, placa),
    FOREIGN KEY (cpf) REFERENCES vendedores (cpf),
    FOREIGN KEY (placa) REFERENCES veiculos (placa)
);