-- APAGANDO O BANCO DE DADOS CASO EXISTA
DROP DATABASE IF EXISTS dbexercicio16;

-- CRIANDO A BASE DE DADOS
 CREATE DATABASE dbexercicio16;
 
 -- CONECTANDO A BASE DE DADOS
 USE dbexercicio16;
 
 -- CRIANDO AS TABELAS
 CREATE TABLE FILIAL(
	idFILIAL INT NOT NULL
    , CIDADE varchar(100)
    , ESTADO varchar(2)
    , primary key (idFILIAL)
 );
 
  CREATE TABLE FUNCIONARIO(
	idFUNCIONARIO INT NOT NULL
    , NOME varchar(100)
    , CARGO varchar(100)
    , idFILIAL INT NOT NULL
    , primary key (idFUNCIONARIO)
    , foreign key (idFILIAL) references FILIAL (idFILIAL)
 );
 
   CREATE TABLE CLIENTE(
	idCLIENTE INT NOT NULL
	, NOME varchar(100)
    , CNPJ int
    , idFILIAL INT NOT NULL
    , primary key (idCLIENTE)
	, foreign key (idFILIAL) references FILIAL (idFILIAL)
 );
 
    CREATE TABLE PROJETO(
	idPROJETO INT NOT NULL
	, DTEENTREGA datetime
    , TITULO varchar(200)
	, idCLIENTE INT NOT NULL
    , idFUNCIONARIO INT NOT NULL
    , primary key (idPROJETO)
    , foreign key (idCLIENTE) references CLIENTE (idCLIENTE)
    , foreign key (idFUNCIONARIO) references FUNCIONARIO (idFUNCIONARIO)
 );
 
     CREATE TABLE LOCAR(
	idFUNCIONARIO INT NOT NULL
    , idPROJETO INT NOT NULL
    , primary key (idFUNCIONARIO , idPROJETO)
    , foreign key (idFUNCIONARIO) references FUNCIONARIO (idFUNCIONARIO)
    , foreign key (idPROJETO) references PROJETO (idPROJETO)
 );