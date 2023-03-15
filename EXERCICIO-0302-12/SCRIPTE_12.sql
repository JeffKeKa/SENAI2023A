-- apagar banco de dados caso exista
drop database if exists dbexercicio12;

-- criando base de dados
create database dbexercicio12;

-- conectando a base de dados
use dbexercicio12;

-- criando as tabelas
create table DEPARTAMENTO(
	idDEPARTAMENTO INT NOT NULL
    , NOME varchar(100) not null
    , RAMAL INT(15) not null
	, RESPONSAVEL varchar(100) not null
    , primary key (idDEPARTAMENTO)
);

create table COMPUTADOR (
	idCOMPUTADOR INT NOT NULL
    , NUMERO int not null
    , FABRICANTE varchar(20) not null
    , MODELO varchar(100) not null
    , idDEPARTAMENTO int
    , primary key (idCOMPUTADOR)
    , foreign key (idDEPARTAMENTO) references DEPARTAMENTO (idDEPARTAMENTO)
);

create table ENDERECO_REDE(
	idENDERECO_REDE INT NOT NULL
    , REDE int not null
    , MASCARA int (20) not null
    , idCOMPUTADOR int
    , primary key (idENDERECO_REDE)
    , foreign key (idCOMPUTADOR) references COMPUTADOR (idCOMPUTADOR)
);