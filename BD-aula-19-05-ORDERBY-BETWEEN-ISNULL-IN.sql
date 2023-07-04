use reservas;

SELECT 
    *
FROM
    departamento
ORDER BY dep_sigla ASC;

SELECT 
    pro_pnome, pro_unome, pro_salario
FROM
    professor
WHERE
    pro_salario BETWEEN 65000 AND 80000;
    
SELECT 
    pro_pnome, pro_unome, pro_salario
FROM
    professor
WHERE
    pro_salario NOT BETWEEN 65000 AND 80000;
    
SELECT 
    pro_pnome, pro_unome
FROM
    professor
WHERE
    (pro_fone_ddd AND pro_fone_nro) IS NULL;
    
SELECT
	*
FROM
	tipo_sala;
    
-- IN | NOT IN


    
    
