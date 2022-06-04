-- ORGANIZACAO DE CHAVES - CONSTRAINT (REGRA) 

CREATE TABLE JOGADOR(
    IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30)
);

CREATE TABLE TIMES(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    NOMETIME VARCHAR(30),
    ID_JOGADOR INT,
    FOREIGN KEY (ID_JOGADOR)
    REFERENCES JOGADOR(IDJOGADOR)
);

INSERT INTO JOGADOR VALUES(NULL,'GUERRERO');
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);

SHOW CREATE TABLE JOGADOR;
SHOW CREATE TABLE TIMES;

SELECT * FROM JOGADOR;

SELECT * FROM TIMES;

-- CRIANDO AS TABELAS 

CREATE TABLE CLIENTE(
    IDCLIENTE INT, 
    NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
    IDTELEFONE INT, 
    TIPO CHAR(3) NOT NULL,
    NUMERO VARCHAR(10) NOT NULL,
    ID_CLIENTE INT
);

-- ADICIONANDO AS REGRAS

ALTER TABLE CLIENTE
ADD CONSTRAINT PK_CLIENTE PRIMARY KEY(IDCLIENTE);

ALTER TABLE TELEFONE
ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

-- VISUALIZANDO O NOME DA CONSTRAINT

SHOW CREATE TABLE TELEFONE;

-- DICIONARIO DE DADOS

SHOW DATABASES;

--EXPLORANDO O INFORMATIO_SCHEMA

USE INFORMATION_SCHEMA;

SHOW TABLES;

DESC TABLE_CONSTRAINTS;

SELECT 
    CONSTRAINT_SCHEMA AS 'BANCO',
    CONSTRAINT_NAME AS 'NOME REGRA',
    TABLE_NAME AS 'TABELA',
    CONSTRAINT_TYPE AS 'TIPO'
FROM TABLE_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = 'COMERCIO';

-- APAGANDO CONSTRAINT

USE COMERCIO;

ALTER TABLE TELEFONE
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;


-- obs: O drop pode ser usado em alguns casos de INSERT, para ganhar performance, pois quando anualada a integridade referencial, o banco não precisa ir consulta-la a cada INSERT. (LEMBRANDO QUE ESSE PROCEDIMENTO TEM O SEU RISCO)


