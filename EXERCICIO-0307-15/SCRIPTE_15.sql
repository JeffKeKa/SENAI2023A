-- APAGANDO O BANCO DE DADOS CASO EXISTA
DROP DATABASE IF EXISTS dbexercicio15;

-- CRIANDO A BASE DE DADOS
 CREATE DATABASE dbexercicio15;
 
 -- CONECTANDO A BASE DE DADOS
 USE dbexercicio15;
 
 -- CRIANDO AS TABELAS
 CREATE TABLE ARMA(
	idARMA INT NOT NULL
    , TIPO varchar(45)
    , IDENTIFICACAO varchar(45)
    , primary key (idARMA)
 );
 
  CREATE TABLE CRIMINOSO(
	idCRIMINOSO INT NOT NULL
    , NOME varchar(100)
    , DTNASCIMENTO datetime
    , primary key (idCRIMINOSO)
 );
 
   CREATE TABLE VITIMA(
	idVITIMA INT NOT NULL
	, NOME varchar(100)
    , DTNASCIMENTO datetime
    , primary key (idVITIMA)
 );
 
    CREATE TABLE CRIME(
	idCRIME INT NOT NULL
	, DTCRIME datetime
    , DESCRICAO varchar(200)
    , primary key (idCRIME)
 );
 
     CREATE TABLE ATACAR(
	idVITIMA INT NOT NULL
    , idCRIMINOSO INT NOT NULL
    , primary key (idVITIMA , idCRIMINOSO)
    , foreign key (idVITIMA) references VITIMA (idVITIMA)
    , foreign key (idCRIMINOSO) references CRIMINOSO (idCRIMINOSO)
 );
 
      CREATE TABLE COMETER(
	idCRIMINOSO INT NOT NULL
	, idCRIME INT NOT NULL
    , primary key (idCRIMINOSO , idCRIME)
    , foreign key (idCRIMINOSO) references CRIMINOSO (idCRIMINOSO)
    , foreign key (idCRIME) references CRIME (idCRIME)
 );
 
      CREATE TABLE SOFRER(
	idVITIMA INT NOT NULL
	, idCRIME INT NOT NULL
    , primary key (idVITIMA , idCRIME)
    , foreign key (idVITIMA) references VITIMA (idVITIMA)
    , foreign key (idCRIME) references CRIME (idCRIME)
 );
 
      CREATE TABLE USAR(
	idARMA INT NOT NULL
	, idCRIME INT NOT NULL
    , primary key (idARMA , idCRIME)
    , foreign key (idARMA) references ARMA (idARMA)
    , foreign key (idCRIME) references CRIME (idCRIME)
 );