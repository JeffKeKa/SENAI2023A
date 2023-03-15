-- APAGANDO O BANCO DE DADOS CASO EXISTA
drop database if exists DBexercicio08;

-- CRIADO A BASE DE DADOS
CREATE DATABASE DBexercicio08;

-- CONECTANDO AO BASE DE DADOS
USE DBexercicio08;

-- CRIANDO AS TABELAS
CREATE TABLE COMPUTADOR (
	IDCOMPUTADOR int NOT NULL
	, MARCA varchar(10) NOT NULL
	, MODELO varchar(45)
	, primary KEY (IDCOMPUTADOR)
);

CREATE TABLE CHAMADO (
	IDCHAMADO int NOT NULL
	, DATADIA date NOT NULL
	, HORA 	time NOT NULL
	, SOLICITANTE varchar (100) not null
	, DESCRICAO varchar (500) not null
    , IDCOMPUTADOR INT
	, primary KEY (IDCHAMADO)
    , FOREIGN KEY (IDCOMPUTADOR) REFERENCES COMPUTADOR (IDCOMPUTADOR)
);

