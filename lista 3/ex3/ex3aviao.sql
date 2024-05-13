CREATE DOMAIN d_texto VARCHAR(100);
CREATE DOMAIN d_pais VARCHAR(30);
CREATE DOMAIN d_nome VARCHAR(40);

CREATE TABLE reserva (
    CodigoReserva SERIAL PRIMARY KEY
);

CREATE TABLE voo (
    num_voo SERIAL PRIMARY KEY
);

CREATE TABLE tipo_aeronave (
    descricao d_texto,
    CodigoAeronave SERIAL PRIMARY KEY
);

CREATE TABLE cidade (
    pais d_pais,
    nome d_nome,
    CodigoCidade SERIAL PRIMARY KEY
);

CREATE TABLE assento (
    classe d_texto,
    num_assento SERIAL PRIMARY KEY
);

CREATE TABLE aeroporto (
    nome_aeroporto d_nome,
    CodigoAeroporto SERIAL PRIMARY KEY,
    CodigoCidade INTEGER,
    FOREIGN KEY (CodigoCidade) REFERENCES cidade (CodigoCidade)
);

CREATE TABLE trecho (
    codigo_trecho SERIAL PRIMARY KEY,
    CodigoAeroporto INTEGER,
    FOREIGN KEY (CodigoAeroporto) REFERENCES aeroporto (CodigoAeroporto),
    CodigoAeronave INTEGER,
    FOREIGN KEY (CodigoAeronave) REFERENCES tipo_aeronave (CodigoAeronave)
);

CREATE TABLE oferta (
    CodigoAeronave INTEGER,
    num_assento INTEGER,
    PRIMARY KEY (CodigoAeronave, num_assento),
    FOREIGN KEY (CodigoAeronave) REFERENCES tipo_aeronave (CodigoAeronave),
    FOREIGN KEY (num_assento) REFERENCES assento (num_assento)
);

CREATE TABLE trecho_reserva (
    data_hora TIMESTAMP,
    codigo_trecho INTEGER,
    CodigoReserva INTEGER,
    prazo_validade INTEGER,
    NomePassageiro d_nome,
    num_assento INTEGER,
    PRIMARY KEY (data_hora),
    FOREIGN KEY (codigo_trecho) REFERENCES trecho (codigo_trecho),
    FOREIGN KEY (CodigoReserva) REFERENCES reserva (CodigoReserva),
    FOREIGN KEY (num_assento) REFERENCES assento (num_assento)
);

CREATE TABLE horario (
    dia_semana INTEGER,
    horario_chegada TIME,
    horario_partida TIME,
    codigo_trecho INTEGER,
    PRIMARY KEY (codigo_trecho, dia_semana),
    FOREIGN KEY (codigo_trecho) REFERENCES trecho (codigo_trecho)
);

CREATE TABLE composicao (
    num_voo INTEGER,
    codigo_trecho INTEGER,
    PRIMARY KEY (num_voo, codigo_trecho),
    FOREIGN KEY (num_voo) REFERENCES voo (num_voo),
    FOREIGN KEY (codigo_trecho) REFERENCES trecho (codigo_trecho)
);