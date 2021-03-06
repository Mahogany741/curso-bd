-- STORED PROCEDURES

-- ALTERANDO O DELIMITER PARA ELE NÃO PARAR A PROCEDURE NO MEIO DO BLOCO DE CÓDIGO
DELIMITER $

-- SINTAXE
CREATE PROCEDURE NOME()
BEGIN   
    BLOCO DE CODIGO;
END
$

-- CRIANDO A PROCEDURE
CREATE PROCEDURE NOME_EMPRESA()
BEGIN
    SELECT 'Universidade dos Dados' AS Empresa;
END
$

--CHAMANDO A PROCEDURE
CALL NOME_EMPRESA()$

-- VOLTANDO O DELIMITER PARA O DEFAULT ;
DELIMITER ;

CALL NOME_EMPRESA();

-- PROCEDURES COM PARAMETROS 

SELECT 10 + 10 AS CONTA;

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN 
    SELECT NUMERO1 + NUMERO2 AS CONTA;
END 
$

CALL CONTA(13, 02)$

-- APAGANDO UMA PROCEDURE;

DROP PROCEDURE CONTA;

CREATE DATABASE PROJETO;

CREATE TABLE CURSOS(
    IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    HORAS INT(3) NOT NULL,
    VALOR FLOAT(10,2) NOT NULL
);

INSERT INTO CURSOS VALUES(NULL, 'JAVA', 30, 500.00);
INSERT INTO CURSOS VALUES(NULL, 'FUNDAMENTO DE BANCO DE DADOS', 40, 700.00);

SELECT * FROM CURSOS;

-- CRIANDO A PROCEDURE DE INSERT 

DELIMITER $

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30), P_HORAS INT(3), P_VALOR FLOAT(10,2))
BEGIN
    INSERT INTO CURSOS VALUES(NULL, P_NOME, P_HORAS, P_VALOR);
END
$

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER', 35, 3000.00);
CALL CAD_CURSO('POWER BI', 20, 1000.00);
CALL CAD_CURSO('TABLEAU', 30, 1200.00);
CALL CAD_CURSO('SQL SERVER INTEGRATION SERVICES', 11, 800.00);
CALL CAD_CURSO('SQL SERVER ANALYSIS SERVICES', 7, 800.00);
CALL CAD_CURSO('SPARK', 6, 1200.00);
CALL CAD_CURSO('CLOUD COMPUTING', 9, 1200.00);

SELECT * FROM CURSOS;

-- EXC: CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS

DELIMITER $

CREATE PROCEDURE VISUALIZAR_CURSO(P_NOME VARCHAR(30))
BEGIN 
    SELECT * 
    FROM CURSOS
    WHERE NOME = P_NOME;
END 
$

DELIMITER ;

CALL VISUALIZAR_CURSO('SQL SERVER INTEGRATION SERVICES');