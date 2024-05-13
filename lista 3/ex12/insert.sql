INSERT INTO professores (nome, salario_mensal, salario_aula, data_hora) 
VALUES ('Professor1', 3000.00, 50.00, CURRENT_TIMESTAMP),
       ('Professor2', 2500.00, 40.00, CURRENT_TIMESTAMP),
       ('Professor3', 2800.00, 45.00, CURRENT_TIMESTAMP);

INSERT INTO estudantes (nome, cpf) 
VALUES ('Estudante1', '12345678901'),
       ('Estudante2', '23456789012'),
       ('Estudante3', '34567890123');

INSERT INTO aulas (tipo_danca, tipo_aula, cod_professor) 
VALUES ('Salsa', 'Iniciante', 1),
       ('Forró', 'Intermediário', 2),
       ('Tango', 'Avançado', 3);

INSERT INTO frequentar (id_estudante, id_aula) 
VALUES (1, 1),
       (2, 2),
       (3, 3);