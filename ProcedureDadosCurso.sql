CREATE DEFINER=`root`@`localhost` PROCEDURE `dadosCurso`(IN curso_id INT)
begin
    select a.ra as Ra, a.nome as Nome, a.email as Email, c.nome as Curso
    from cursos c
    join alunos a on a.Cursos_id_curso = c.id_curso
    where c.id_curso = curso_id;
end