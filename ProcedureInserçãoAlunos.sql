CREATE DEFINER=`root`@`localhost` PROCEDURE `insercaoAluno`(
	nome varchar (90),
    endereco varchar(150),
    ra int,
    cursos_id_curso int
	
)
begin
  DECLARE nome_primeiro varchar(50);
  DECLARE nome_ultimo varchar(50);
  DECLARE dominio_email varchar(150);
  
  SET nome_primeiro = SUBSTRING_INDEX(nome, ' ', 1);
  SET nome_ultimo = SUBSTRING_INDEX(nome, ' ', -1);  
  SET dominio_email = CONCAT(nome_primeiro, '.', nome_ultimo, '@facens.br');	
  INSERT INTO alunos VALUES (null, nome, endereco, ra, dominio_email, cursos_id_curso);
end