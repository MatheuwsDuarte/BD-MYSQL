use reservas;

SELECT 
    pro_pnome AS 'Nome', pro_salario AS 'Salario'
FROM
    professor
WHERE
    pro_salario = (SELECT 
            MIN(pro_salario)
        FROM
            professor);

SELECT 
    pro_pnome
FROM
    (SELECT 
        *
    FROM
        professor
    WHERE
        pro_fone_nro IS NULL) tb;