-- apagar banco de dados caso exista
drop database if exists dbexercicio09;

-- criando base de dados
create database dbexercicio09;

-- conectando a base de dados
use dbexercicio09;

-- criando as tabelas
create table DOCUMENTO(
	idDOCUMENTO INT NOT NULL
    , RENAVAM varchar(11) not null
    , DATADIA date not null
	, CIDADE varchar(100) not null
    , ESTADO varchar(2) not null
    , primary key (idDOCUMENTO)
);

-- criando as tabelas
create table VEICULO(
	idVEICULO INT NOT NULL
    , MODELO varchar(50) not null
    , MARCA  varchar(10) not null
	, ANO year not null
    , PLACA varchar(8) not null
    , idDOCUMENTO INT
    , primary key (idVEICULO)
    , FOREIGN KEY (idDOCUMENTO) references DOCUMENTO (idDOCUMENTO)
);