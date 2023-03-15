-- apagar banco de dados caso exista
drop database if exists dbexercicio10;

-- criando base de dados
create database dbexercicio10;

-- conectando a base de dados
use dbexercicio10;

-- criando as tabelas
create table PEDIDO(
	idPEDIDO INT NOT NULL
    , DATADIA date not null
    , HORA time not null
	, CLIENTE varchar(100) not null
    , primary key (idPEDIDO)
);

create table PRODUTO(
	idPRODUTO INT NOT NULL
    , NOME varchar(100) not null
    , PRECO decimal(2) not null
    , primary key (idPRODUTO)
);

CREATE TABLE VENDA (
	idPEDIDO INT NOT NULL
	, idPRODUTO INT NOT NULL
	, PRIMARY KEY (idPEDIDO, idPRODUTO)
	, FOREIGN KEY (idPEDIDO) REFERENCES PEDIDO (idPEDIDO)
	, FOREIGN KEY (idPRODUTO) REFERENCES PRODUTO (idPRODUTO)
);