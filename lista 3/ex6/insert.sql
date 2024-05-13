INSERT INTO regioes (nome) VALUES ('Região A'), ('Região B'), ('Região C');

INSERT INTO vendedores (cpf, nome, telefone) VALUES ('12345678901', 'João', '1234567890'), ('23456789012', 'Maria', '2345678901');

INSERT INTO veiculos (ano, modelo, cor) VALUES ('2022-01-01', 'Modelo1', 'Preto'), ('2023-01-01', 'Modelo2', 'Branco');

INSERT INTO produtos (nome, valor_custo) VALUES ('Produto1', 10.50), ('Produto2', 20.75);

INSERT INTO telefone (telefone) VALUES ('1234567890'), ('2345678901');

INSERT INTO percursos (descricao, id_regiao) VALUES ('Descrição1', 1), ('Descrição2', 2), ('Descrição3', 3);

INSERT INTO responsavel (cpf, id_percurso) VALUES ('12345678901', 1), ('23456789012', 2);

INSERT INTO pontos_estrategicos (nome, id_percurso) VALUES ('Ponto1', 1), ('Ponto2', 2), ('Ponto3', 3);

INSERT INTO clientes (nome_cliente, cpd_cnpj, telefone, rua, numero, bairro, cep) 
VALUES ('Cliente1', '12345678901234', '1234567890', 'Rua A', 1, 'Bairro A', '12345678'), 
('Cliente2', '23456789012345', '2345678901', 'Rua B', 2, 'Bairro B', '23456789');

INSERT INTO notas_fiscais (cpf, id_cliente) VALUES ('12345678901', 1), ('23456789012', 2);

INSERT INTO itens (quantidade, valor_unitario, codigo_nota, id_produto) VALUES (2, 10.50, 1, 1), (3, 20.75, 2, 2);

INSERT INTO alocam (cpf, placa, dia) VALUES ('12345678901', 1, '2024-05-13'), ('23456789012', 2, '2024-05-14');