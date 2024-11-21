create database Bibliotec;

use Bibliotec;

create table UsuarioCurso(
UsuarioCursoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),

)

CREATE TABLE Usuario(
UsuarioID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
Nome VARCHAR(100),
DtNascimento DATE,
Email VARCHAR(100),
Senha VARCHAR(20),
Contato char(14),
Admin bit,
Status bit
);

CREATE TABLE Curso(
CursoID INT not null PRIMARY KEY IDENTITY(1,1),
Nome Varchar(100),
Periodo Char(1)
);

alter table Usuario
alter column UsuarioID INT NOT NULL;

alter table Usuario
add primary key(UsuarioID);

alter table Curso
alter column CursoID INT not  null;
 
alter table Curso
add primary key(CursoID);

drop table Usuario;
create table Categoria(
CategoriaID INT not null primary key identity(1,1),
Nome Varchar(100)
);

Create table livro(
LivroID int not null primary key identity(1,1),
Escritor varchar(100),
Editora varchar(100),
Descrição varchar(100),
Nome varchar(100),
);

create table LivroCategoria(
LivroCategoriaID int not null primary key identity(1,1),
LivroID  int,
CategoriaID int,

foreign key(LivroID)
References Livro(LivroID),

Foreign key(CategoriaID)
references Categoria(CategoriaID),

);

create table UsuarioCursoID(
UsuarioCursoID int not null primary key identity(1,1),
UsuarioID INT,
CursoID INT,

foreign key (UsuarioID)
references Usuario(UsuarioID),

foreign key (CursoID)
references Curso(CursoID),
);

create table LivroReservaID(
LivroReservaID int not null primary key identity(1,1),
UsuarioID int,
LivroID int,

foreign key (UsuarioID)
references Usuario(UsuarioID),

foreign key (LivroID)
references Livro(LivroID),
);

create table LivroFavoritoID(
LivroFavoritoID int not null primary key identity(1,1),
UsuarioID int,
LivroID int,

foreign key (UsuarioID)
references Usuario(UsuarioID),

foreign key (LivroID)
references Livro(LivroID),
);

EXEC sp_rename'LivroFavorito.LivroFavoritoaID', 'LivroFavoritoID', 'COLUMN';

alter table Livro add Idioma Varchar(100);
alter table Livro add Imagem Varchar(100);
alter table Livro add Reservado Bit;
alter table Usuario add Email Varchar(100);

Insert into Usuario(
	Nome,
	DtNascimento,
	Email,
	Senha,
	Contato,
	Admin,
	Status
)Values
('Pedro Henrique','05/06/2007','phperes05@gmail.com','123', '11 97648 3382',0,1),
('Roberto','30/10/2010','robert@gmail.com','321','11 23448 3372',1,0),
('Yuri','22/12/2000','yuri@gmail.com','333','11 97693 8392',0,1);


DELETE FROM Usuario WHERE 15 = 15



Insert into livro(
Nome,
Escritor,
Editora,
Descrição,
Idioma,
Imagem,
Reservado)

Values(
'Sherlock-Homes',
'Arthur Conan Doyle',
'camelot editora',
'Sherlock Holmes é um detetive enigmático',
'Portugues-Brasil',
'Foto02.png',
1),
(
'Sherlock-Homes',
'Arthur Conan Doyle',
'camelot editora',
'Sherlock Holmes é um detetive enigmático',
'Portugues-Brasil',
'Foto03.png',
2)


create table LCategoria(
LCategoriaID int not null primary key identity(1,1),
LivroID,
CategoriaID
);

insert into LCategoria(
Nome,
Categoria
)
values
('SeiN','Romance'),
('A Volta dos que não foram','Suspense')


INSERT INTO Curso(
	Nome,
	Periodo
)Values('Multimidia', 'M'),
	('Multimidia', 'T'),
	('Multimidia', 'N'),
	('Desenvolvimento de Sistemas', 'M'),
	('Desenvolvimento de Sistemas', 'T'),
	('Desenvolvimento de Sistemas', 'I'),
	('Jogos Digitais', 'T'),
	('Redes', 'M'),
	('Redes', 'T');
	

Insert into UsuarioCurso(
UsuarioID,
CursoID
)Values(2,1)


EXEC sp_rename 'UsuarioCursoID', 'UsuarioCurso';



Insert into LivroReservaID(
UsuarioID,
LivroID
)Values(1,2)



Update Usuario
Set
	Email = 'phperes05@gmail.com',
	status = 0
where UsuarioID = 2


alter table LivroCategoria add Ca Varchar(100);
alter table Livro add Imagem Varchar(100);



--DQL-------------------------------
