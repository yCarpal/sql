CREATE DOMAIN d_nome VARCHAR(40);
CREATE DOMAIN d_cpf CHAR(11);
CREATE DOMAIN d_danca VARCHAR(50);
CREATE DOMAIN d_aula VARCHAR(50);

CREATE TABLE professores (
    cod_professor SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    salario_mensal NUMERIC(7,2) NOT NULL,
    salario_aula NUMERIC(5,2) NOT NULL,
    data_hora TIMESTAMP NOT NULL
);

CREATE TABLE estudantes (
    id_estudante SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    cpf d_cpf UNIQUE NOT NULL
);

CREATE TABLE aulas (
    id_aula SERIAL PRIMARY KEY,
    tipo_danca d_danca NOT NULL,
    tipo_aula d_aula NOT NULL,
    cod_professor INTEGER NOT NULL,
    FOREIGN KEY (cod_professor) REFERENCES professores (cod_professor)
);

CREATE TABLE frequentar (
    id_estudante INTEGER NOT NULL,
    id_aula INTEGER NOT NULL,
    PRIMARY KEY (id_estudante, id_aula),
    FOREIGN KEY (id_estudante) REFERENCES estudantes (id_estudante),
    FOREIGN KEY (id_aula) REFERENCES aulas (id_aula)
);