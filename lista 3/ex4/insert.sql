-- Adicionar alguns dados para as tabelas

INSERT INTO categoria_cd (nome) VALUES ('Rock'), ('Pop'), ('Jazz');

INSERT INTO usuarios (nome, qntdcddretirados) VALUES ('João', 2), ('Maria', 3);

INSERT INTO musicas (aovivo, titulo) VALUES ('Sim', 'Musica1'), ('Não', 'Musica2'), ('Sim', 'Musica3');

INSERT INTO genero_artista (nome) VALUES ('Rock'), ('Pop'), ('Jazz');

INSERT INTO cds (nome, numerocd, cdg_categoria) VALUES ('CD1', 1, 1), ('CD2', 2, 2), ('CD3', 1, 3);

INSERT INTO artistas (nome, bandasinfluentes, descricao, localdeorigem, anodecriacao, cdggenero) 
VALUES ('Artista1', 'Banda1', 'Descrição1', 'Local1', '2000-01-01', 1), 
('Artista2', 'Banda2', 'Descrição2', 'Local2', '2005-01-01', 2), 
('Artista3', 'Banda3', 'Descrição3', 'Local3', '2010-01-01', 3);

INSERT INTO contem (cdgmusica, cdgcd) VALUES (1, 1), (2, 2), (3, 3);