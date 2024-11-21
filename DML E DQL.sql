-----------------------------------------------------------------------------------DML---------------------------------------------------------------------------------

insert into Categoria(Nome)
values(''),
('Romance'),
('Suspense'),
('Drama'),
('TI'),
('Cientifico'),
('Ficção'),
('Ação'),
('Aventura'),
('Culinária'),
('Motivacional'),
('Fantasia'),
('HQ'),
('Infanto-Juvenil');

--DELETE FROM Categoria Where CategoriaID = ;
--DELETE FROM Categoria Where Name =  'TI';
DELETE FROM Categoria;

dbcc CHECKIDENT ('Categoria', reseed, 0);

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

	alter table LivroReservaID
	ADD DtReserva DATE;
	
	alter table LivroReservaID
	ADD DtDevolução DATE;

	alter table LivroReservaID
	ADD Status DATE;

	Update LivroReservaID
	Set
		DtReserva = '01/02/2024',
		DtDevolução = '01/03/6969',
		Status = 1
		Where LivroReservaID = 3;

		alter table LivroReservaID alter column [Status] INT;



--DQL-------------------------------



select*from Usuario;
select*from livro;
select*from LCategoria;
select*from Curso;
select*from UsuarioCursoID;
select*from LivroReservaID;
select*from Categoria;

select Usuario.Nome, Curso.Nome, Curso.Periodo From Usuario Inner join UsuarioCurso
ON Usuario.UsuarioID = UsuarioCurso.UsuarioID
inner join Curso
on Curso.CursoID = UsuarioCurso.UsuarioID;

select livro.Nome, Categoria.Nome from livro inner join
LCategoria on livro.LivroID = LCategoria.LivroID
inner join Categoria
on Categoria.CategoriaID = LCategoria.CategoriaID;

select Nome, Email FROM Usuario;