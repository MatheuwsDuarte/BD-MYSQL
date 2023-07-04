CREATE DATABASE testec41;

use reservas;

CREATE TABLE testec41.tda AS (SELECT * FROM
    turma_disciplina);

CREATE TABLE testec41.turma2017_01 as (SELECT tur_codigo Turma,
    dis_nome Disciplina,
    pro_pnome Professor,
    pro_salario Salario,
    tudi_ano Ano,
    tudi_semestre Semestre,
    tudi_modalidade Modalidade FROM
    professor p,
    turma_disciplina td,
    disciplina d
WHERE
    tudi_ano = 2017 AND tudi_semestre = 1
        AND tudi_modalidade = 'Presencial'
        AND p.pro_siape = td.pro_siape
        AND td.dis_codigo = d.dis_codigo);

UPDATE testec41.turma2017_01 
SET 
    Salario = (SELECT 
		 MIN(pro_salario)
        FROM
            professor)
		WHERE
			Professor LIKE '%z';