-- apagar banco de dados caso exista
drop database if exists dbexercicio07_03;

-- criando base de dados
create database dbexercicio07_03;

-- conectando a base de dados
use dbexercicio07_03;

-- criando as tabelas
create table ALUNO(
	IDALUNO INT NOT NULL
    , NOME varchar(100) not null
    , IDADE int not null
    , primary key (IDALUNO)

);

-- criando as tabelas
create table PRODUTO(
	IDPRODUTO INT NOT NULL
    , NOME varchar(100) not null
    , primary key (IDPRODUTO)

);

CREATE TABLE ALUNO_PRODUTO (
	IDALUNO INT NOT NULL
	, IDPRODUTO INT NOT NULL
	, PRIMARY KEY (IDALUNO, IDPRODUTO)
	, FOREIGN KEY (IDALUNO) REFERENCES ALUNO (IDALUNO)
	, FOREIGN KEY (IDPRODUTO) REFERENCES PRODUTO (IDPRODUTO)
);