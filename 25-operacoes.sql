USE PROJETO;

SELECT * FROM vendedores;

-- CALCULOS EM LINHA

SELECT 
    nome,
    janeiro,
    fevereiro,
    marco,
    (janeiro + fevereiro + marco) AS 'TOTAL',
    TRUNCATE((janeiro + fevereiro + marco)/3, 2) AS 'MEDIA'
FROM vendedores;