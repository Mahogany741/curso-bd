-- OR -> para que a saida da query seja verdadeira, basta que apenas uma condição seja verdadeira.
-- AND -> para que a saida da query seja verdadeira, Todas a condições precisam ser verdadeiras.


-- OR - OU

    SELECT  
        NOME, 
        SEXO,
        ENDERECO
    FROM CLIENTE
    WHERE 
    SEXO = 'M' OR
    ENDERECO LIKE '%RJ';

    SELECT 
        NOME, 
        SEXO,
        ENDERECO
    FROM CLIENTE
    WHERE
    SEXO = 'F' OR 
    ENDERECO LIKE '%ESTACIO';

-- AND - E

    SELECT  
        NOME, 
        SEXO,
        ENDERECO
    FROM CLIENTE
    WHERE 
    SEXO = 'M' AND
    ENDERECO LIKE '%RJ';

    SELECT 
        NOME, 
        SEXO,
        ENDERECO
    FROM CLIENTE
    WHERE
    SEXO = 'F' AND 
    ENDERECO LIKE '%ESTACIO';