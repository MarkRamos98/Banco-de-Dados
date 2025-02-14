-- se tem mariaDB deve ter um jesusDB
 
-- deletando banco
drop database dbsapiensselestial;
 
-- criando banco
create database dbsapiensselestial;
 
-- acessando banco
use dbsapiensselestial;
 
--criando as tabelas

create table tbgenero(
GenID int not null auto_increment,
GenNome varchar(100) not null,
primary key(GenID)
);
 
create table tbseila(
SeilaID int not null auto_increment,
SeilaNome varchar(20) not null,
SeilaEmail varchar(25) not null,
SeilaCell char(15) null,
SeilaNasci datetime null,
SeilaDindin decimal(9,2) default 0 check(SeilaDindin >= 0),
SeilaSexo char(1) default "F" check(SeilaSexo in("F","M")),
SeilaGenero Varchar(100) not null,
primary key(SeilaID),
foreign key(SeilaGenero)references tbgenero(GenID)
);

create table tbusuario(
UsuID int not null auto_increment,
UsuNome varchar(50) not null,
UsuSenha Varchar(15) not null,
UsuSeilaID int not null,
primary Key(UsuID),
foreign key(UsuSeilaID)references tbseila(SeilaID)
);

create table tbFornecedor(
ForID int not null auto_increment,
ForNome varchar(50),
ForEmail varchar(50),
ForTell char(15),
primary key(ForID)
);

create table tbprodutos(
ProID int not null auto_increment,
ProDescri varchar(100),
ProQuantidade int,
ProPreco decimal(9,2),
ProVal datetime,
ProLote char(10),
ProForID int not null,
primary key(ProID),
foreign key(ProForID)references tbFornecedor(ForID)
);
 
-- ver tabelas
show tables;
 
-- ver oq tem na tabela
desc tbgenero
desc tbseila;
desc tbusuario;