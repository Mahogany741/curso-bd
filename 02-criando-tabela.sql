/* CRIANDO A TABELA DE CLIENTES */

CREATE TABLE CLIENTE(
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF VARCHAR(11),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)
);


/* VERIFICANDO AS TABELAS DO BANCO */

SHOW TABLES;

/* EXIBINDO A ESTRUTURA DA TABELA */

DESC CLIENTE;