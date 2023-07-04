-- CREATE DATABASE c41;
-- CREATE DATABASE IF NOT EXISTS c41;
-- SHOW DATABASES;
-- SHOW TABLES;
-- DESCRIBE departamento;
-- DROP TABLE departamento;

CREATE TABLE departamento (
    dep_codigo INT PRIMARY KEY, -- primary key (dep_codigo)
    dep_nome VARCHAR(45),
    dep_ramal INT NOT NULL UNIQUE CHECK (dep_ramal BETWEEN 1000 AND 9999)
);

CREATE TABLE IF NOT EXISTS departamento (
    dep_codigo INT NULL,
    dep_nome VARCHAR(45) NULL
);

CREATE TABLE curso (
    cur_codigo INT PRIMARY KEY,
    cur_nome VARCHAR(85) NOT NULL,
    dep_codigo INT NOT NULL,
    CONSTRAINT fk_curso_departamento FOREIGN KEY (dep_codigo)
        REFERENCES departamento (dep_codigo)
);

SELECT * FROM departamento;
SELECT * FROM curso;

INSERT INTO departamento(dep_codigo, dep_nome, dep_ramal) values (1, 'matheus', 1234);
INSERT INTO curso(cur_codigo, cur_nome, dep_codigo) values (1, 'computacao', 1);