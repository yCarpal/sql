-- Inserindo registros na tabela professores
INSERT INTO professores (nome, salario_mensal, salario_aula, data_hora) VALUES ('Ana Silva', 3000.00, 50.00, '2024-05-01 10:00:00');
INSERT INTO professores (nome, salario_mensal, salario_aula, data_hora) VALUES ('Carlos Souza', 3200.00, 55.00, '2024-05-02 11:00:00');
INSERT INTO professores (nome, salario_mensal, salario_aula, data_hora) VALUES ('Mariana Lima', 3100.00, 52.00, '2024-05-03 12:00:00');
INSERT INTO professores (nome, salario_mensal, salario_aula, data_hora) VALUES ('João Pedro', 3300.00, 53.00, '2024-05-04 13:00:00');
INSERT INTO professores (nome, salario_mensal, salario_aula, data_hora) VALUES ('Renata Costa', 3400.00, 54.00, '2024-05-05 14:00:00');

-- Inserindo registros na tabela estudantes
INSERT INTO estudantes (nome, cpf) VALUES ('Lucas Ferreira', '12345678901');
INSERT INTO estudantes (nome, cpf) VALUES ('Paula Santos', '23456789012');
INSERT INTO estudantes (nome, cpf) VALUES ('Pedro Oliveira', '34567890123');
INSERT INTO estudantes (nome, cpf) VALUES ('Carla Nunes', '45678901234');
INSERT INTO estudantes (nome, cpf) VALUES ('Ana Paula', '56789012345');
INSERT INTO estudantes (nome, cpf) VALUES ('Carlos Eduardo', '58585854141');
INSERT INTO estudantes (nome, cpf) VALUES ('Lucas Antonio', '98484916414');
INSERT INTO estudantes (nome, cpf) VALUES ('Ana Carolina', '94184196611');
-- Inserindo registros na tabela aulas
INSERT INTO aulas (tipo_danca, tipo_aula, cod_professor) VALUES ('Salsa', 'Iniciante', 1);
INSERT INTO aulas (tipo_danca, tipo_aula, cod_professor) VALUES ('Tango', 'Intermediário', 2);
INSERT INTO aulas (tipo_danca, tipo_aula, cod_professor) VALUES ('Hip-Hop', 'Avançado', 3);
INSERT INTO aulas (tipo_danca, tipo_aula, cod_professor) VALUES ('Balé', 'Iniciante', 4);
INSERT INTO aulas (tipo_danca, tipo_aula, cod_professor) VALUES ('Zumba', 'Intermediário', 5);

-- Inserindo registros na tabela frequentar
INSERT INTO frequentar (id_estudante, id_aula) VALUES (1, 1);
INSERT INTO frequentar (id_estudante, id_aula) VALUES (2, 2);
INSERT INTO frequentar (id_estudante, id_aula) VALUES (3, 3);
INSERT INTO frequentar (id_estudante, id_aula) VALUES (4, 4);
INSERT INTO frequentar (id_estudante, id_aula) VALUES (5, 5);
INSERT INTO frequentar (id_estudante, id_aula) VALUES (6, 5);
INSERT INTO frequentar (id_estudante, id_aula) VALUES (7, 3);
INSERT INTO frequentar (id_estudante, id_aula) VALUES (8, 2);



-- Consulta 1: Selecionar todos os professores
SELECT * FROM professores;

-- Consulta 2: Selecionar todos os estudantes
SELECT * FROM estudantes;



-- Consulta envolvendo tabela estudantes e frequentar
SELECT estudantes.nome, aulas.tipo_danca, aulas.tipo_aula
FROM estudantes
JOIN frequentar ON estudantes.id_estudante = frequentar.id_estudante
JOIN aulas ON frequentar.id_aula = aulas.id_aula;



-- Consulta envolvendo tabela professores, aulas e frequentar
SELECT professores.nome, aulas.tipo_danca, aulas.tipo_aula, COUNT(frequentar.id_estudante) AS num_alunos
FROM professores
JOIN aulas ON professores.cod_professor = aulas.cod_professor
LEFT JOIN frequentar ON aulas.id_aula = frequentar.id_aula
GROUP BY professores.nome, aulas.tipo_danca, aulas.tipo_aula;


-- Consulta envolvendo tabelas estudantes, aulas, frequentar e professores
SELECT estudantes.nome AS aluno, aulas.tipo_danca, aulas.tipo_aula, professores.nome AS professor
FROM estudantes
JOIN frequentar ON estudantes.id_estudante = frequentar.id_estudante
JOIN aulas ON frequentar.id_aula = aulas.id_aula
JOIN professores ON aulas.cod_professor = professores.cod_professor;







-- Consulta envolvendo tabelas estudantes, aulas, frequentar e professores
SELECT estudantes.nome AS aluno, aulas.tipo_danca, aulas.tipo_aula, professores.nome AS professor
FROM estudantes
JOIN frequentar ON estudantes.id_estudante = frequentar.id_estudante
JOIN aulas ON frequentar.id_aula = aulas.id_aula
JOIN professores ON aulas.cod_professor = professores.cod_professor;



-- Alterando o salário mensal do professor com cod_professor = 1
UPDATE professores
SET salario_mensal = 9800.00
WHERE cod_professor = 1;


-- Excluindo o aluno com id_estudante = 1
DELETE FROM estudantes
WHERE id_estudante = 1;