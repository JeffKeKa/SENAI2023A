-- APAGANDO O BANCO DE DADOS CASO EXISTA
DROP DATABASE IF EXISTS dbexercicio13C;

-- CRIANDO A BASE DE DADOS
 CREATE DATABASE dbexercicio13C;
 
 -- CONECTANDO A BASE DE DADOS
 USE dbexercicio13C;
 
 -- CRIANDO AS TABELAS
 CREATE TABLE PACIENTE (
	idPACIENTE INT NOT NULL
    , NOME varchar(100)
    , primary key (idPACIENTE)
 );
 
  CREATE TABLE MEDICO(
	idMEDICO INT NOT NULL
    , NOME varchar(100)
    , primary key (idMEDICO)
 );
 
   CREATE TABLE CONSULTA(
	idCONSULTA INT NOT NULL
    , idPACIENTE INT
    , idMEDICO INT
    , DTRESPOSTA datetime
    , primary key (idCONSULTA)
    , foreign key (idPACIENTE) references PACIENTE (idPACIENTE)
    , foreign key (idMEDICO) references MEDICO (idMEDICO)
 ); 