SELECT now();

-- nome, email, numero, estado 

SELECT 
    C.nome,
    IFNULL(C.email, '********') as Email,
    T.numero,
    E.estado
FROM CLIENTE C
INNER JOIN ENDERECO E 
ON C.idcliente = E.id_cliente
INNER JOIN TELEFONE T
ON C.idcliente = T.id_cliente;

-- A funcao permite verificar se o resulta da query em um coluna é null, e substituir por um texto(String), mais apresentável. OBS: É recomendado atribuir um alias a coluna.