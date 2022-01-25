-- COUNT(*), GROUP BY, PERFORMANCE COM OPERADORES LOGICOS

-- CONTANDO OS REGISTROS DE UMA TABELA

SELECT COUNT(*) AS 'Qtd de registros da tabela cliente' FROM CLIENTE; 

SELECT COUNT(*) 
FROM CLIENTE; 

-- OPERADOR GROUP BY

SELECT SEXO, COUNT(*)
FROM CLIENTE 
GROUP BY SEXO;


/* 1 MILHAO DE REGISTROS

PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUACAO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE 
SEXO = 'F' OR
CIDADE = 'RIO DE JANEIRO';

SITUACAO - TRATANDO COM E / AND
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE 
CIDADE = 'RIO DE JANEIRO' AND
SEXO = 'F';

CONCLUSÃO: Para otimizar buscar com OR, sabendo que ele tem saída positiva com apenas um Verdadeiro, basta colocar como primeiro parametro do filtro, aquele que tem mais chances de dar Verdadeiro. Com o operador AND, a lógica é inversa, como ele precisa que as duas proposicoes sejam verdadeiras, então basta que a primeira seja falsa, para que ele não busque a segunda.
