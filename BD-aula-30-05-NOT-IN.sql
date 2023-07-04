SELECT 
    pro_pnome, pro_unome
FROM
    professor p
WHERE
    pro_pnome NOT IN (SELECT DISTINCT
            (pro_pnome)
        FROM
            turma_disciplina td
        WHERE
            p.pro_siape = td.pro_siape);
