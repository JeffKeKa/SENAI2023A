-- apagar banco de dados caso exista
drop database if exists dbexercicio11;

-- criando base de dados
create database dbexercicio11;

-- conectando a base de dados
use dbexercicio11;

-- criando as tabelas
create table USUARIO(
	idUSUARIO INT NOT NULL
    , NOME varchar(100) not null
    , LOGIN varchar(50) not null
	, SENHA varchar(45) not null
    , CADASTRO_DIA date not null
    , primary key (idUSUARIO)
);

create table VIDEO (
	idVIDEO INT NOT NULL
    , TITULO varchar(45) not null
    , categoria varchar(45) not null
    , PUBLICADO_DIA date not null
    , idUSUARIO INT
    , primary key (idVIDEO)
    , foreign key (idUSUARIO) references USUARIO (idUSUARIO)
);