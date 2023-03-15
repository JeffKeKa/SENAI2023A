-- APAGANDO O BANCO DE DADOS CASO EXISTA
DROP DATABASE IF EXISTS dbexercicio13A;

-- CRIANDO A BASE DE DADOS
 CREATE DATABASE dbexercicio13A;
 
 -- CONECTANDO A BASE DE DADOS
 USE dbexercicio13A;
 
 -- CRIANDO AS TABELAS
 CREATE TABLE MEDICO (
	idMEDICO INT NOT NULL
    , NOME varchar(45)
    , CRM INT
    , primary key (idMEDICO)
 );
 
  CREATE TABLE PACIENTE(
	idPACIENTE INT NOT NULL
    , NOME varchar(45)
    , primary key (idPACIENTE)
 );
 
   CREATE TABLE CONSULTA(
	idMEDICO INT NOT NULL
	, idPACIENTE INT NOT NULL
    , primary key (idMEDICO , idPACIENTE)
    , foreign key (idMEDICO) references MEDICO (idMEDICO)
    , foreign key (idPACIENTE) references PACIENTE (idPACIENTE)
 );
 