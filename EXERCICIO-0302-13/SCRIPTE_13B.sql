-- APAGANDO O BANCO DE DADOS CASO EXISTA
DROP DATABASE IF EXISTS dbexercicio13B;

-- CRIANDO A BASE DE DADOS
 CREATE DATABASE dbexercicio13B;
 
 -- CONECTANDO A BASE DE DADOS
 USE dbexercicio13B;
 
 -- CRIANDO AS TABELAS
 CREATE TABLE PERGUNTA (
	idPERGUNTA INT NOT NULL
    , TEXTO varchar(100)
    , primary key (idPERGUNTA)
 );
 
  CREATE TABLE ALUNO(
	idALUNO INT NOT NULL
    , NOME varchar(45)
    , primary key (idALUNO)
 );
 
   CREATE TABLE OPCAO(
	idOPCAO INT NOT NULL
    , TEXTO_OPCAO varchar(45)
    , primary key (idOPCAO)
 );
 
   CREATE TABLE RESPOSTA(
	idRESPOSTA INT NOT NULL
	, DTRESPOSTA datetime
    , idPERGUNTA INT
    , idALUNO INT
    , idOPCAO INT
    , primary key (idRESPOSTA)
    , foreign key (idPERGUNTA) references PERGUNTA (idPERGUNTA)
    , foreign key (idALUNO) references ALUNO (idALUNO)
    , foreign key (idOPCAO) references OPCAO (idOPCAO)
 ); 