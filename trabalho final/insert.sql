INSERT INTO Categoria (nome) VALUES
    ('Eletrônicos'),
    ('Roupas'),
    ('Alimentos'),
    ('Livros'),
    ('Decoração');

-- Inserções na tabela Produto
INSERT INTO Produto (nome, categoria_id, preco, descricao, data_criacao, data_atualizacao) VALUES
    ('Smartphone XYZ', 1, 1500.00, 'Smartphone avançado com câmera de alta resolução.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Camiseta Preta', 2, 29.99, 'Camiseta básica na cor preta, tamanho M.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Arroz Integral', 3, 5.99, 'Pacote de 1kg de arroz integral.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Livro de Ficção', 4, 39.90, 'Best-seller de um autor renomado.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    ('Vaso Decorativo', 5, 49.99, 'Vaso decorativo para plantas.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Inserções na tabela Loja
INSERT INTO Loja (nome, endereco, telefone) VALUES
    ('Loja Pormenos', 'Av. Farrapos, 123, Porto Alegre, RS', '(51) 91234-5678'),
    ('Loja gzt', 'Rua da Praia, 456, Porto Alegre, RS', '(51) 95678-9012'),
    ('Loja Grazziotin', 'Av. Rio Branco, 789, Santa Maria, RS', '(55) 99876-5432'),
    ('Loja Franco Giorgi', 'Rua dos Andradas, 321, Porto Alegre, RS', '(51) 96543-2109'),
    ('Loja Tottal', 'Av. Salgado Filho, 987, Canoas, RS', '(51) 98765-4321');

-- Inserções na tabela Cliente
INSERT INTO Cliente (nome, email, telefone, endereco, data_cadastro) VALUES
    ('João Silva', 'joao.silva@email.com', '(11) 99999-8888', 'Rua A, 123, São Paulo, SP', CURRENT_TIMESTAMP),
    ('Maria Santos', 'maria.santos@email.com', '(21) 99876-5432', 'Av. B, 456, Rio de Janeiro, RJ', CURRENT_TIMESTAMP),
    ('Carlos Oliveira', 'carlos.oliveira@email.com', '(31) 91234-5678', 'Rua C, 789, Belo Horizonte, MG', CURRENT_TIMESTAMP),
    ('Ana Souza', 'ana.souza@email.com', '(85) 92222-3333', 'Av. D, 987, Fortaleza, CE', CURRENT_TIMESTAMP),
    ('Pedro Costa', 'pedro.costa@email.com', '(41) 98765-4321', 'Rua E, 654, Curitiba, PR', CURRENT_TIMESTAMP);

-- Inserções na tabela Fornecedor
INSERT INTO Fornecedor (nome, contato, email, telefone, endereco) VALUES
    ('Fornecedor Eletrônicos Ltda', 'Fulano de Tal', 'contato@fornecedoreletronicos.com', '(11) 91111-2222', 'Av. X, 789, São Paulo, SP'),
    ('Fornecedor Moda Ltda', 'Ciclano de Almeida', 'contato@fornecedormoda.com', '(21) 93333-4444', 'Rua Y, 456, Rio de Janeiro, RJ'),
    ('Distribuidora Alimentos S.A.', 'Beltrano Pereira', 'contato@distribuidoraalimentos.com', '(31) 95555-6666', 'Av. Z, 123, Belo Horizonte, MG'),
    ('Livraria Cultural', 'Atendimento ao Cliente', 'atendimento@livrariacultural.com', '(81) 97777-8888', 'Rua W, 321, Recife, PE'),
    ('Decorações Mais Bonitas', 'Maria da Silva', 'contato@decoracoes.com', '(41) 9999-0000', 'Av. V, 987, Curitiba, PR');

-- Inserções na tabela Funcionario
INSERT INTO Funcionario (nome, email, telefone, cargo, loja_id) VALUES
    ('José Santos', 'jose.santos@email.com', '(11) 91111-1111', 'Vendedor', 1),
    ('Mariana Lima', 'mariana.lima@email.com', '(21) 92222-2222', 'Gerente', 2),
    ('Rafaela Oliveira', 'rafaela.oliveira@email.com', '(31) 93333-3333', 'Caixa', 3),
    ('Paulo Souza', 'paulo.souza@email.com', '(81) 94444-4444', 'Atendente', 4),
    ('Fernanda Costa', 'fernanda.costa@email.com', '(41) 95555-5555', 'Decorador', 5);

-- Inserções na tabela Estoque
INSERT INTO Estoque (produto_id, loja_id, quantidade, data_atualizacao) VALUES
    (1, 1, 50, CURRENT_TIMESTAMP),
    (2, 2, 100, CURRENT_TIMESTAMP),
    (3, 3, 200, CURRENT_TIMESTAMP),
    (4, 4, 30, CURRENT_TIMESTAMP),
    (5, 5, 15, CURRENT_TIMESTAMP);

-- Inserções na tabela PedidoReposicao
INSERT INTO PedidoReposicao (data_pedido, situacao, fornecedor_id, valor) VALUES
    (CURRENT_TIMESTAMP, 'Pendente', 1, 1500.00),
    (CURRENT_TIMESTAMP, 'Em andamento', 2, 800.00),
    (CURRENT_TIMESTAMP, 'Concluído', 3, 1200.00),
    (CURRENT_TIMESTAMP, 'Pendente', 4, 600.00),
    (CURRENT_TIMESTAMP, 'Concluído', 5, 750.00);

-- Inserções na tabela Crediario
INSERT INTO Crediario (cliente_id, limite_credito, saldo_devedor, data_abertura) VALUES
    (1, 5000.00, 1200.00, CURRENT_TIMESTAMP),
    (2, 3000.00, 800.00, CURRENT_TIMESTAMP),
    (3, 4000.00, 1500.00, CURRENT_TIMESTAMP),
    (4, 2500.00, 600.00, CURRENT_TIMESTAMP),
    (5, 3500.00, 2000.00, CURRENT_TIMESTAMP);

-- Inserções na tabela PagamentoCrediario
INSERT INTO PagamentoCrediario (crediario_id, data_pagamento, valor_pagamento) VALUES
    (1, CURRENT_TIMESTAMP, 300.00),
    (2, CURRENT_TIMESTAMP, 200.00),
    (3, CURRENT_TIMESTAMP, 500.00),
    (4, CURRENT_TIMESTAMP, 200.00),
    (5, CURRENT_TIMESTAMP, 700.00);

-- Inserções na tabela Cobranca
INSERT INTO Cobranca (crediario_id, funcionario_id, data_cobranca, status_cobranca, observacoes) VALUES
    (1, 1, CURRENT_TIMESTAMP, 'Pendente', 'Cliente em atraso com parcelas.'),
    (2, 2, CURRENT_TIMESTAMP, 'Em andamento', 'Cliente prometeu pagar até o final da semana.'),
    (3, 3, CURRENT_TIMESTAMP, 'Concluído', 'Cliente quitou o débito.'),
    (4, 4, CURRENT_TIMESTAMP, 'Pendente', 'Cliente ainda não respondeu às tentativas de contato.'),
    (5, 5, CURRENT_TIMESTAMP, 'Em andamento', 'Cliente solicita prazo maior para pagar.');

-- Inserções na tabela Venda
INSERT INTO Venda (data_venda, cliente_id, total, tipo_venda) VALUES
    (CURRENT_TIMESTAMP, 1, 1200.00, 'crediario'),
    (CURRENT_TIMESTAMP, 2, 800.00, 'crediario'),
    (CURRENT_TIMESTAMP, 3, 1200.00, 'crediario'),
    (CURRENT_TIMESTAMP, 4, 600.00, 'crediario'),
    (CURRENT_TIMESTAMP, 5, 2100.00, 'vista');

-- Inserções na tabela ItemVenda
INSERT INTO ItemVenda (venda_id, produto_id, quantidade, preco_unitario) VALUES
    (1, 3, 250, 5.99),
    (1, 5, 12, 49.99),
    (2, 2, 27, 29.63),
    (3, 1, 1, 1500.00),
    (3, 3, 250, 5.99),
    (4, 4, 1, 600.00),
    (5, 1, 1, 1500.00),
    (5, 2, 17, 29.41);

-- Inserções na tabela Parcela
INSERT INTO Parcela (crediario_id, venda_id, numero_parcela, valor_parcela, data_vencimento) VALUES
    (1, 1, 1, 400.00, '2024-07-01'),
    (1, 1, 2, 400.00, '2024-08-01'),
    (1, 1, 3, 400.00, '2024-09-01'),
    (2, 2, 1, 266.67, '2024-07-01'),
    (2, 2, 2, 266.67, '2024-08-01'),
    (2, 2, 3, 266.66, '2024-09-01'),
    (3, 3, 1, 500.00, '2024-07-01'),
    (3, 3, 2, 500.00, '2024-08-01'),
    (3, 3, 3, 200.00, '2024-09-01'),
    (4, 4, 1, 200.00, '2024-07-01'),
    (4, 4, 2, 200.00, '2024-08-01'),
    (4, 4, 3, 200.00, '2024-09-01'),
    (5, 5, 1, 700.00, '2024-07-01'),
    (5, 5, 2, 700.00, '2024-08-01'),
    (5, 5, 3, 700.00, '2024-09-01');




Consulta 1: Qual item foi mais vendido

SELECT 
    p.nome AS produto, 
    SUM(iv.quantidade) AS total_vendido
FROM 
    ItemVenda iv
JOIN 
    Produto p ON iv.produto_id = p.produto_id
GROUP BY 
    p.nome
ORDER BY 
    total_vendido DESC
LIMIT 1;

Consulta 2: Qual funcionário fez mais crediários

SELECT 
    f.nome AS funcionario, 
    COUNT(c.crediario_id) AS total_crediarios
FROM 
    Crediario c
JOIN 
    Funcionario f ON c.funcionario_id = f.funcionario_id
GROUP BY 
    f.nome
ORDER BY 
    total_crediarios DESC
LIMIT 1;

Consulta 3: Qual foi a maior venda na loja

SELECT 
    l.nome AS loja, 
    v.venda_id, 
    v.total AS valor_venda
FROM 
    Venda v
JOIN 
    Loja l ON v.loja_id = l.loja_id
ORDER BY 
    v.total DESC
LIMIT 1;

Consulta 4: Clientes com Maior Saldo Devedor

SELECT 
    c.nome AS cliente, 
    cr.saldo_devedor
FROM 
    Crediario cr
JOIN 
    Cliente c ON cr.cliente_id = c.cliente_id
ORDER BY 
    cr.saldo_devedor DESC
LIMIT 1;

Consulta 5: Produtos com Menor Estoque Disponível

SELECT 
    p.nome AS produto, 
    SUM(e.quantidade) AS estoque_total
FROM 
    Estoque e
JOIN 
    Produto p ON e.produto_id = p.produto_id
GROUP BY 
    p.nome
ORDER BY 
    estoque_total ASC
LIMIT 1;


