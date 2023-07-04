use reservas;

SELECT 
    dep_nome, p.*
FROM
    departamento, professor p
WHERE
    dep_nome LIKE '%ação';
    
    
SELECT 
	pro_pnome as nome_Professor, pro_unome as sobrenome_Professor
FROM
	professor
WHERE pro_pnome NOT LIKE '%har%';

SELECT 
	pro_pnome as nome_Professor, pro_unome as sobrenome_Professor, pro_salario as salario
FROM
	professor
WHERE pro_salario LIKE '_00%';


