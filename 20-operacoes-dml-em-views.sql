-- UPDATE, INSERT E DELETE - DML 

INSERT -- NAO PERMITIDO EM VIEW COM JOIN 
DELETE -- NAO PERMITIDO EM VIEW COM JOIN 
UPDATE -- PERMITIDO E ALTERA A TABELA ORIGEM


-- FILTROS / SELECAO 

SELECT *
FROM V_RELATORIO 
WHERE SEXO = 'F';