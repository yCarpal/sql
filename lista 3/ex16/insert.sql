INSERT INTO departamentos (nome, telefone) VALUES ('Departamento1', '1234567890'), ('Departamento2', '2345678901');

INSERT INTO funcionarios_professores (sexo, nome, endereco, telefone1, rg, cpf, data_admissao, capacitacao, codigo) 
VALUES ('Masculino', 'Professor1', 'Endereço1', '1234567890', '123456789012345', '12345678901', '2022-01-01', 'Capacitação1', 1),
       ('Feminino', 'Professor2', 'Endereço2', '2345678901', '234567890123456', '23456789012', '2023-01-01', 'Capacitação2', 2),
       ('Masculino', 'Professor3', 'Endereço3', '3456789012', '345678901234567', '34567890123', '2024-01-01', 'Capacitação3', 2);

INSERT INTO alunos (nome, sexo, rg, cpf, graduacao, cidade, estado, cep, data_nascimento, telefone) 
VALUES ('Aluno1', 'Masculino', '12345678901234', '12345678901', 'Graduação1', 'Cidade1', 'Estado1', '12345678', '2000-01-01', '1234567890'),
       ('Aluno2', 'Feminino', '23456789012345', '23456789012', 'Graduação2', 'Cidade2', 'Estado2', '23456789', '2001-01-01', '2345678901'),
       ('Aluno3', 'Masculino', '34567890123456', '34567890123', 'Graduação3', 'Cidade3', 'Estado3', '34567890', '2002-01-01', '3456789012');

INSERT INTO salas DEFAULT VALUES;

INSERT INTO turmas (ano, semestre, n_matricula, num_salas) VALUES (2024, 1, 1, 1), (2024, 2, 2, 1), (2024, 1, 3, 1);

INSERT INTO cursos (nome, n_horas_sem, descricao, codigo) 
VALUES ('Curso1', 40, 'Descrição1', 1),
       ('Curso2', 50, 'Descrição2', 2),
       ('Curso3', 60, 'Descrição3', 2);

INSERT INTO disciplinas (nome, n_horas_sem, cod_curso) VALUES ('Disciplina1', 40, 1), ('Disciplina2', 50, 2),