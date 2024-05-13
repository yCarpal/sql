CREATE DOMAIN d_nome VARCHAR(40);
CREATE DOMAIN d_sexo VARCHAR(40);
CREATE DOMAIN d_endereco VARCHAR(40);
CREATE DOMAIN d_telefone CHAR(10);
CREATE DOMAIN d_rg CHAR(15);
CREATE DOMAIN d_cpf CHAR(11);
CREATE DOMAIN d_capacitacao VARCHAR(100);
CREATE DOMAIN d_graduacao VARCHAR(40);
CREATE DOMAIN d_cidade VARCHAR(40);
CREATE DOMAIN d_estado VARCHAR(40);
CREATE DOMAIN d_cep CHAR(11);
CREATE DOMAIN d_descricao VARCHAR(100);

CREATE TABLE departamentos (
    codigo SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    telefone d_telefone NOT NULL
);

CREATE TABLE funcionarios_professores (
    sexo d_sexo NOT NULL,
    nome d_nome NOT NULL,
    endereco d_endereco NOT NULL,
    telefone1 d_telefone NOT NULL,
    telefone2 d_telefone,
    telefone3 d_telefone,
    telefone4 d_telefone,
    matricula SERIAL PRIMARY KEY,
    rg d_rg NOT NULL,
    cpf d_cpf UNIQUE NOT NULL,
    data_admissao DATE NOT NULL,
    capacitacao d_capacitacao NOT NULL,
    capacitacao1 d_capacitacao,
    capacitacao2 d_capacitacao,
    capacitacao3 d_capacitacao,
    capacitacao4 d_capacitacao,
    codigo INTEGER NOT NULL,
    FOREIGN KEY (codigo) REFERENCES departamentos (codigo)
);

CREATE TABLE alunos (
    n_matricula SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    sexo d_sexo NOT NULL,
    rg d_rg NOT NULL,
    cpf d_cpf UNIQUE NOT NULL,
    graduacao d_graduacao NOT NULL,
    cidade d_cidade NOT NULL,
    estado d_estado NOT NULL,
    cep d_cep NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone d_telefone NOT NULL,
    telefone1 d_telefone,
    telefone2 d_telefone,
    nota REAL
);

CREATE TABLE salas (
    num_salas SERIAL PRIMARY KEY
);

CREATE TABLE turmas (
    ano INTEGER NOT NULL,
    semestre INTEGER NOT NULL,
    cod_turma SERIAL PRIMARY KEY,
    n_matricula INTEGER NOT NULL,
    FOREIGN KEY (n_matricula) REFERENCES alunos (n_matricula),
    num_salas INTEGER NOT NULL,
    FOREIGN KEY (num_salas) REFERENCES salas (num_salas)
);

CREATE TABLE cursos (
    cod_curso SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    n_horas_sem INTEGER NOT NULL,
    descricao d_descricao NOT NULL,
    codigo INTEGER NOT NULL,
    FOREIGN KEY (codigo) REFERENCES departamentos (codigo)
);

CREATE TABLE disciplinas (
    cod_disciplina SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    n_horas_sem INTEGER NOT NULL,
    cod_curso INTEGER NOT NULL,
    FOREIGN KEY (cod_curso) REFERENCES cursos (cod_curso)
);

CREATE TABLE avaliacoes (
    data DATE NOT NULL,
    n_matricula INTEGER NOT NULL,
    FOREIGN KEY (n_matricula) REFERENCES alunos (n_matricula),
    cod_turma INTEGER NOT NULL,
    FOREIGN KEY (cod_turma) REFERENCES turmas (cod_turma)
);

CREATE TABLE ministrar (
    matricula INTEGER NOT NULL,
    FOREIGN KEY (matricula) REFERENCES funcionarios_professores (matricula),
    cod_disciplina INTEGER NOT NULL,
    FOREIGN KEY (cod_disciplina) REFERENCES disciplinas (cod_disciplina),
    PRIMARY KEY (matricula, cod_disciplina)
);

CREATE TABLE dependentes (
    cod_dependente SERIAL PRIMARY KEY,
    data_nasc DATE NOT NULL,
    nome d_nome NOT NULL,
    matricula INTEGER NOT NULL,
    FOREIGN KEY (matricula) REFERENCES funcionarios_professores (matricula)
);

CREATE TABLE matriculas (
    n_matricula INTEGER NOT NULL,
    FOREIGN KEY (n_matricula) REFERENCES alunos (n_matricula),
    cod_curso INTEGER NOT NULL,
    FOREIGN KEY (cod_curso) REFERENCES cursos (cod_curso),
    PRIMARY KEY (n_matricula, cod_curso)
);

CREATE TABLE pre_requisito (
    cod_disciplina INTEGER NOT NULL,
    possui_cod_disciplina INTEGER NOT NULL,
    PRIMARY KEY (cod_disciplina, possui_cod_disciplina)
);
