/*Exercicio LIVRARIA*/

CREATE DATABASE LIVRARIA; 

USE LIVRARIA;

CREATE TABLE LIVRO(
    NOME_LIVRO VARCHAR(50),
    NOME_AUTOR VARCHAR(50),
    SEXO_AUTOR CHAR(1),
    NUMERO_PAGINA INT(2),
    NOME_EDITORA VARCHAR(50),
    VALOR_LIVRO FLOAT(10,2),
    ESTADO_UF_EDITORA CHAR(2),
    ANO_PUBLICADO CHAR(4)
);

-- Inserts
    INSERT INTO LIVRO VALUES(
        'Cavaleiro Real',
        'Ana Claudia',
        'F',
        465,
        'Atlas',
        49.9,
        'RJ',
        '2009'
    );

    INSERT INTO LIVRO VALUES(
        'SQL para leigos',
        'João Nunes',
        'M',
        456,
        'Addison',
        98,
        'SP',
        '2018'
    );

    INSERT INTO LIVRO VALUES(
        'Receitas Caseiras',
        'Celia Tavares',
        'F',
        210,
        'Atlas',
        45,
        'RJ',
        '2008'
    );

    INSERT INTO LIVRO VALUES(
        'Pessoas Efetivas',
        'Eduardo Santos',
        'M',
        390,
        'Beta',
        78.99,
        'RJ',
        '2018'
    );


    INSERT INTO LIVRO VALUES(
        'Hábitos Saudáveis',
        'Eduardo Santos',
        'M',
        630,
        'Beta',
        150.98,
        'RJ',
        '2019'
    );

    INSERT INTO LIVRO VALUES(
        'A Casa Marrom',
        'Hermes Macedo',
        'M',
        250,
        'Bubba',
        60,
        'MG',
        '2016'
    );

    INSERT INTO LIVRO VALUES(
        'Estacio Querido',
        'Geraldo Francisco',
        'M',
        310,
        'Insignia',
        100,
        'ES',
        '2015'
    );

    INSERT INTO LIVRO VALUES(
        'Pra sempre amigas',
        'Leda Silva',
        'F',
        510,
        'Insignia',
        78.98,
        'ES',
        '2011'
    );

    INSERT INTO LIVRO VALUES(
        'Copas Inesquecíveis',
        'Marco Alcantara',
        'M',
        200,
        'Larson',
        138.98,
        'RS',
        '2018'
    );

    INSERT INTO LIVRO VALUES(
        'O Poder da Mente',
        'Clara Mafra',
        'F',
        120,
        'Continental',
        56.58,
        'SP',
        '2017'
    );

-- ex 1 - Trazer todos os dados 

    SELECT * FROM LIVRO; 

-- ex 2 - Trazer o nome do livro e o nome da editora

    SELECT 
        NOME_LIVRO,
        NOME_EDITORA
    FROM LIVRO;

-- ex 3 - Trazer o nome do livro a UF dos livros publicados por autores do sexo masculino.

    SELECT 
        NOME_LIVRO,
        ESTADO_UF_EDITORA
    FROM LIVRO
    WHERE SEXO_AUTOR = 'M';

-- ex 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.

    SELECT 
        NOME_LIVRO, 
        NUMERO_PAGINA
    FROM LIVRO
    WHERE SEXO_AUTOR = 'F';

-- ex 5 - Trazer os valores dos livros das editores de São Paulo.

    SELECT
        VALOR_LIVRO
    FROM LIVRO
    WHERE ESTADO_UF_EDITORA = 'SP';

-- ex 6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Desafio)

    SELECT 
        NOME_AUTOR,
        SEXO_AUTOR
    FROM LIVRO 
    WHERE SEXO_AUTOR = 'M' AND (ESTADO_UF_EDITORA = 'SP' OR ESTADO_UF_EDITORA = 'RJ');