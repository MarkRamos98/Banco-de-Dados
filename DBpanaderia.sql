-- se tem mariaDB deve ter um jesusDB
 
-- deletando banco
drop database dbsapiensselestial;
 
-- criando banco
create database dbsapiensselestial;
 
-- acessando banco
use dbsapiensselestial;
 
--criando as tabelas
create table tbacessorios(
AceID int not null auto_increment,
AceCor varchar(20) not null,
AceDef int not null,
primary Key(AceID)
);
 
create table tbseila(
SeilaID int not null auto_increment,
SeilaNome varchar(20) not null,
SeilaEmail varchar(25) not null,
SeilaCell char(15)
SeilaNasci datetime,
SeilaDindin decimal(9,5),
SeilaSexo char(1),
primary key(SeilaID)
);
 
-- ver tabelas
show tables;
 
-- ver oq tem na tabela
desc tbacessorios;