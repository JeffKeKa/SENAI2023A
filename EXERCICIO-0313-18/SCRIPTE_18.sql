-- APAGANDO O BANCO DE DADOS CASO EXISTA
DROP DATABASE IF EXISTS dbexercicio18;

-- CRIANDO A BASE DE DADOS
 CREATE DATABASE dbexercicio18;
 
 -- CONECTANDO A BASE DE DADOS
 USE dbexercicio18;
 
 -- CRIANDO AS TABELAS
 CREATE TABLE DEPARTAMENTO(
	idDEPARTAMENTO INT NOT NULL
    , NOME varchar(100) NOT NULL
    , SALA int
    , HIERARQUIA int
    , primary key (idDEPARTAMENTO)
 );
 
     CREATE TABLE FUNCIONARIO(
	idFUNCIONARIO INT NOT NULL
    , NOME varchar(100)
    , DTADMISSAO datetime
    , TELEFONE int
    , idDEPARTAMENTO int
    , primary key (idFUNCIONARIO)
    , foreign key (idDEPARTAMENTO) references DEPARTAMENTO (idDEPARTAMENTO)
 );