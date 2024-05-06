SELECT * FROM pizzas p;

SELECT p.idPizza, p.nome
    From pizzas p;

SELECT pi.idPizza, pi.nome AS pizza
    FROM pizzas pi;


SELECT c.idCliente, c.cliente,b.idBairro AS codBairros, b.bairro, b.tempoEspera
    FROM clientes c,
         bairros b,
    WHERE c.idBairro = b.idBairro;
    -- Cuidado caso ocorra chamado de duas chaves primarias no where sará erro,
    -- necessita ser uma chave estrangeira com uma primaria

-- ADICIONAR RI E FILTRO--
SELECT c.idCliente, c.cliente,b.idBairro AS codBairros, b.bairro, b.tempoEspera
    FROM clientes c,
         bairros b,
    WHERE c.idBairro = b.idBairro; -- RI
    AND b.bairro = 'Barra'-- filtro