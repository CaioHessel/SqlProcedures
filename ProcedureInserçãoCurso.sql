CREATE DEFINER=`root`@`localhost` PROCEDURE `insercaoCurso`(
	nome varchar(45)
)
BEGIN
	insert into cursos values (null, nome);
END