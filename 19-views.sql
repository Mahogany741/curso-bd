SELECT 
    C.NOME, 
    C.SEXO,
    C.EMAIL,
    T.TIPO,
    T.NUMERO,
    E.BAIRRO,
    E.CIDADE,
    E.ESTADO 
FROM cliente C
INNER JOIN Endereco E
ON C.idcliente = E.id_cliente 
INNER JOIN telefone T 
ON C.idcliente = T.id_cliente;

-- VIEW = Ponteiro/Visão

CREATE VIEW RELATORIO AS 
SELECT 
    C.NOME, 
    C.SEXO,
    C.EMAIL,
    T.TIPO,
    T.NUMERO,
    E.BAIRRO,
    E.CIDADE,
    E.ESTADO 
FROM cliente C
INNER JOIN Endereco E
ON C.idcliente = E.id_cliente 
INNER JOIN telefone T 
ON C.idcliente = T.id_cliente;

SELECT * FROM RELATORIO;

--CURIOSIDADE 

SHOW TABLES; -- Mostra todas as tables 
SHOW DATABASES -- Mostra todos os DB
SHOW VIEWS; -- Não existe. Para visualizar uma view, é utilizado o mesmo comando de visualizar tabelas (obs: os dados não são duplicados).

-- APAGANDO UMA VIEW 

DROP VIEW RELATORIO;

-- CRIANDO UM PREFIXO, PARA FACILITAR A IDENTIFICACAO DA VIEW

CREATE VIEW V_RELATORIO AS 
SELECT 
    C.NOME, 
    C.SEXO,
    C.EMAIL,
    T.TIPO,
    T.NUMERO,
    E.BAIRRO,
    E.CIDADE,
    E.ESTADO 
FROM cliente C
INNER JOIN Endereco E
ON C.idcliente = E.id_cliente 
INNER JOIN telefone T 
ON C.idcliente = T.id_cliente;

SHOW TABLES; 
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
| v_relatorio        |
+--------------------+

-- Escolhendo as colunas dentro da VIEW
SELECT 
    NOME,
    NUMERO,
    ESTADO 
FROM v_relatorio;

