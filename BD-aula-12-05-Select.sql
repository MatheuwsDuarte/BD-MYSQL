SELECT 
    pro_pnome, pro_salario * 1.1
FROM
    professor;
-- where

SELECT 
    pro_pnome, pro_unome, pro_salario
FROM
    professor
WHERE
    pro_salario > 100000;
    
SELECT 
    sal_codigo, sal_posicoes, sal_computadores
FROM
    sala
WHERE
    sal_posicoes <= 30;
     
SELECT 
    *
FROM
    professor AS p,
    departamento AS d
WHERE
    p.dep_codigo = d.dep_codigo;
    
SELECT 
    pro_pnome,
    pro_unome,
    tur_codigo,
    dis_nome,
    tudi_ano,
    tudi_semestre
FROM
    professor AS p,
    turma_disciplina AS td,
    disciplina AS d
WHERE
    td.pro_siape = p.pro_siape
        AND td.dis_codigo = d.dis_codigo;
        
SELECT 
    pro_pnome, pro_unome, tur_codigo, dis_nome, cur_nome
FROM
    professor AS p,
    turma_disciplina AS td,
    disciplina AS d,
    curso AS c
WHERE
    td.pro_siape = p.pro_siape
        AND td.dis_codigo = d.dis_codigo
        AND d.cur_codigo = c.cur_codigo;