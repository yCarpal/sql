INSERT INTO reserva DEFAULT VALUES;
INSERT INTO reserva DEFAULT VALUES;
INSERT INTO reserva DEFAULT VALUES;

-- Adicionando múltiplos itens na tabela voo
INSERT INTO voo DEFAULT VALUES;
INSERT INTO voo DEFAULT VALUES;
INSERT INTO voo DEFAULT VALUES;

-- Adicionando múltiplos itens na tabela tipo_aeronave
INSERT INTO tipo_aeronave (descricao) VALUES 
  ('Boeing 737'), 
  ('Airbus A320'), 
  ('Embraer E190'),
  ('Boeing 747'),
  ('Airbus A380');

-- Adicionando múltiplos itens na tabela cidade
INSERT INTO cidade (pais, nome) VALUES 
  ('Brasil', 'São Paulo'), 
  ('EUA', 'Nova York'), 
  ('França', 'Paris'),
  ('Japão', 'Tóquio'),
  ('Inglaterra', 'Londres');

-- Adicionando múltiplos itens na tabela assento
INSERT INTO assento (classe) VALUES 
  ('Econômica'), 
  ('Executiva'), 
  ('Primeira Classe'),
  ('Econômica Plus'),
  ('Executiva Premium');

-- Adicionando múltiplos itens na tabela aeroporto
INSERT INTO aeroporto (nome_aeroporto, CodigoCidade) VALUES 
  ('Aeroporto de Congonhas', 1), 
  ('Aeroporto JFK', 2), 
  ('Aeroporto Charles de Gaulle', 3),
  ('Aeroporto de Narita', 4),
  ('Aeroporto de Heathrow', 5);

-- Adicionando múltiplos itens na tabela trecho
INSERT INTO trecho (CodigoAeroporto, CodigoAeronave) VALUES 
  (1, 1), 
  (2, 2), 
  (3, 3),
  (4, 4),
  (5, 5);

-- Adicionando múltiplos itens na tabela oferta
INSERT INTO oferta (CodigoAeronave, num_assento) VALUES 
  (1, 1), 
  (2, 1), 
  (3, 1),
  (4, 1),
  (5, 1);

-- Adicionando múltiplos itens na tabela trecho_reserva
INSERT INTO trecho_reserva (data_hora, codigo_trecho, CodigoReserva, prazo_validade, NomePassageiro, num_assento) VALUES 
  ('2024-05-13 10:00:00', 1, 1, 1, 'João', 1), 
  ('2024-05-14 12:00:00', 2, 1, 1, 'Maria', 1), 
  ('2024-05-15 14:00:00', 3, 2, 1, 'Carlos', 1),
  ('2024-05-16 16:00:00', 4, 2, 1, 'Ana', 1),
  ('2024-05-17 18:00:00', 5, 3, 1, 'Sophia', 1);

-- Adicionando múltiplos itens na tabela horario
INSERT INTO horario (dia_semana, horario_chegada, horario_partida, codigo_trecho) VALUES 
  (1, '08:00:00', '10:00:00', 1), 
  (2, '10:00:00', '12:00:00', 2), 
  (3, '12:00:00', '14:00:00', 3),
  (4, '14:00:00', '16:00:00', 4),
  (5, '16:00:00', '18:00:00', 5);

-- Adicionando múltiplos itens na tabela composicao
INSERT INTO composicao (num_voo, codigo_trecho) VALUES 
  (1, 1), 
  (1, 2), 
  (2, 3),
  (2, 4),
  (3, 5);