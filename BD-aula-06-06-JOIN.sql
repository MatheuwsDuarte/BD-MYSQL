USE reservas;

SELECT 
    *
FROM
    professor p,
    departamento d
WHERE
    p.dep_codigo = d.dep_codigo;

SELECT 
    *
FROM
    professor
        NATURAL JOIN
    departamento;
    
SELECT 
    *
FROM
    professor
        JOIN
    departamento using(dep_codigo);
    

    
