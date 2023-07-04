USE c41;

INSERT INTO departamento(dep_codigo, dep_nome, dep_ramal) values (1, 'matheus', 1234);
INSERT INTO curso(cur_codigo, cur_nome, dep_codigo) values (1, 'computacao', 1);

ALTER TABLE curso ADD cur_nome varchar(50) after cur_codigo;

UPDATE curso 
SET 
    cur_nome = 'informatica'
WHERE
    cur_codigo = 1;

DELETE FROM curso 
WHERE
    cur_codigo = 1;

SELECT 
    *
FROM
    departamento;
SELECT 
    *
FROM
    curso;