CREATE DOMAIN d_nome VARCHAR(30);
CREATE DOMAIN d_descricao VARCHAR(100);
CREATE DOMAIN d_local VARCHAR(50);

CREATE TABLE categoria_cd (
    cdg_categoria SERIAL PRIMARY KEY,
    nome d_nome NOT NULL
);

CREATE TABLE usuarios (
    cdgusuario SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    qntdcddretirados INTEGER NOT NULL
);

CREATE TABLE musicas (
    cdgmusica SERIAL PRIMARY KEY,
    aovivo d_nome NOT NULL,
    titulo d_nome NOT NULL
);

CREATE TABLE genero_artista (
    cdggenero SERIAL PRIMARY KEY,
    nome d_nome NOT NULL
);

CREATE TABLE cds (
    cdgcd SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    numerocd INTEGER NOT NULL,
    cdg_categoria INTEGER NOT NULL,
    FOREIGN KEY (cdg_categoria) REFERENCES categoria_cd (cdg_categoria)
);

CREATE TABLE gravacao (
    cdgmusica INTEGER NOT NULL,
    FOREIGN KEY (cdgmusica) REFERENCES musicas (cdgmusica)
);

CREATE TABLE emprestimo (
    cdgcd INTEGER NOT NULL,
    FOREIGN KEY (cdgcd) REFERENCES cds (cdgcd),
    cdgusuario INTEGER NOT NULL,
    FOREIGN KEY (cdgusuario) REFERENCES usuarios (cdgusuario)
);

CREATE TABLE participacao (
    cdgcd INTEGER NOT NULL,
    FOREIGN KEY (cdgcd) REFERENCES cds (cdgcd),
    cdgartista INTEGER NOT NULL,
    FOREIGN KEY (cdgartista) REFERENCES artistas (cdgartista)
);

CREATE TABLE artistas (
    cdgartista SERIAL PRIMARY KEY,
    nome d_nome NOT NULL,
    bandasinfluentes d_nome,
    descricao d_descricao,
    localdeorigem d_local,
    anodecriacao DATE,
    cdggenero INTEGER NOT NULL,
    FOREIGN KEY (cdggenero) REFERENCES genero_artista (cdggenero)
);

CREATE TABLE contem (
    cdgmusica INTEGER NOT NULL,
    FOREIGN KEY (cdgmusica) REFERENCES musicas (cdgmusica),
    cdgcd INTEGER NOT NULL,
    FOREIGN KEY (cdgcd) REFERENCES cds (cdgcd)
);

