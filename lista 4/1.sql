CREATE TABLE PRODUTO (
    produto_id INTEGER PRIMARY KEY,
    nome VARCHAR(40),
    preco DECIMAL(10,2),
    descricao TEXT,
    data_criacao TIMESTAMP,
    estoque_loja_id INTEGER,
    categoria_id INTEGER,
    data_atualizacao TIMESTAMP,
    FOREIGN KEY (estoque_loja_id) REFERENCES ESTOQUE_LOJAS(id_estoque),
    FOREIGN KEY (categoria_id) REFERENCES CATEGORIA(categoria_id)
);

CREATE TABLE ESTOQUE_LOJAS (
    id_estoque INTEGER,
    quantidade DECIMAL(10,2),
    data_atualizacao TIMESTAMP,
    num_loja INTEGER,
    nome VARCHAR (50),
    endereco TEXT,
    telefone VARCHAR(20),
    fornecedor_id INTEGER,
    PRIMARY KEY (id_estoque, num_loja),
    FOREIGN KEY (fornecedor_id) REFERENCES FORNECEDOR(fornecedor_id)
);

CREATE TABLE CLIENTES (
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR(40),
    telefone VARCHAR(20),
    data_cadastro TIMESTAMP,
    email VARCHAR(40),
    dtnascimento DATE,
    complemento VARCHAR(40),
    cep VARCHAR(10),
    logradouro VARCHAR(40),
    numero INTEGER,
    bairro VARCHAR(40),
    cidade VARCHAR(40),
    crediario_id INTEGER,
    FOREIGN KEY (crediario_id) REFERENCES CREDIARIOS(crediario_id)
);

CREATE TABLE FUNCIONARIOS (
    funcionario_id INTEGER PRIMARY KEY,
    nome VARCHAR(40),
    telefone VARCHAR(20),
    cargo VARCHAR (50),
    estoque_loja_id INTEGER,
    num_loja INTEGER,
    FOREIGN KEY (estoque_loja_id, num_loja) REFERENCES ESTOQUE_LOJAS(id_estoque, num_loja)
);

CREATE TABLE CREDIARIOS (
    crediario_id INTEGER PRIMARY KEY,
    limite_credito DECIMAL(10,2),
    saldo_devedor DECIMAL(10,2),
    data_abertura TIMESTAMP,
    funcionario_id INTEGER,
    estoque_loja_id INTEGER,
    num_loja INTEGER,
    FOREIGN KEY (funcionario_id) REFERENCES FUNCIONARIOS(funcionario_id),
    FOREIGN KEY (estoque_loja_id, num_loja) REFERENCES ESTOQUE_LOJAS(id_estoque, num_loja)
);

CREATE TABLE COBRANCA (
    cobranca_id INTEGER,
    data_cobranca TIMESTAMP,
    status_cobranca VARCHAR(20),
    observacoes TEXT,
    crediario_id INTEGER,
    funcionario_id INTEGER,
    PRIMARY KEY (cobranca_id, crediario_id),
    FOREIGN KEY (crediario_id) REFERENCES CREDIARIOS(crediario_id),
    FOREIGN KEY (funcionario_id) REFERENCES FUNCIONARIOS(funcionario_id)
);

CREATE TABLE PARCELAS (
    data_vencimento DATE,
    valor_parcela DECIMAL(10,2),
    parcela_id INTEGER,
    numero_parcela INTEGER,
    crediario_id INTEGER,
    venda_id INTEGER,
    PRIMARY KEY (parcela_id, crediario_id),
    FOREIGN KEY (crediario_id) REFERENCES CREDIARIOS(crediario_id),
    FOREIGN KEY (venda_id) REFERENCES VENDAS(id_venda)
);

CREATE TABLE VENDAS (
    id_venda INTEGER PRIMARY KEY,
    data_venda TIMESTAMP,
    total DECIMAL(10,2),
    tipo_venda VARCHAR(40),
    cliente_id INTEGER,
    FOREIGN KEY (cliente_id) REFERENCES CLIENTES(id_cliente)
);

CREATE TABLE ITEMVENDA (
    id_item_venda INTEGER PRIMARY KEY,
    quantidade DECIMAL(10,2),
    preco_unitario DECIMAL(10,2),
    venda_id INTEGER,
    produto_id INTEGER,
    FOREIGN KEY (venda_id) REFERENCES VENDAS(id_venda),
    FOREIGN KEY (produto_id) REFERENCES PRODUTO(produto_id)
);

CREATE TABLE FORNECEDOR (
    fornecedor_id INTEGER PRIMARY KEY,
    nome VARCHAR(40),
    email VARCHAR(40),
    telefone VARCHAR(20),
    endereco TEXT,
    contato VARCHAR(40)
);

CREATE TABLE PEDIDOREPOSICAO (
    valor DECIMAL(10,2),
    pedido_id INTEGER PRIMARY KEY,
    data_pedido TIMESTAMP,
    status VARCHAR(20),
    fornecedor_id INTEGER,
    FOREIGN KEY (fornecedor_id) REFERENCES FORNECEDOR(fornecedor_id)
);

CREATE TABLE CATEGORIA (
    categoria_id INTEGER PRIMARY KEY,
    nome VARCHAR (50)
);

CREATE TABLE ACESSO (
    cliente_id INTEGER,
    estoque_loja_id INTEGER,
    num_loja INTEGER,
    FOREIGN KEY (cliente_id) REFERENCES CLIENTES(id_cliente),
    FOREIGN KEY (estoque_loja_id, num_loja) REFERENCES ESTOQUE_LOJAS(id_estoque, num_loja)
);