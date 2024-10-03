create database Bibliotec;

use Bibliotec;

CREATE TABLE Usuario(
UsuarioID INT not  null PRIMARY KEY IDENTITY(1,1),
Nome VARCHAR(100),
DtNascimento DATE,
Email VARCHAR(100),
Senha VARCHAR(20),
Contato char(14),
Admin bit,
Status bit
);

CREATE TABLE Curso(
CursoID INT not null PRIMARY KEY IDENTITY(1,1)
Nome Varchar(100),
Periodo Char(1)
);

alter table Usuario
alter column UsuarioID INT not  null;

alter table Usuario
add primary key(UsuarioID);

alter table Curso
alter column CursoID INT not  null;
 
alter table Curso
add primary key(CursoID);

--drop table Usuario;