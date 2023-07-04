use c41;
DESCRIBE curso;
DESCRIBE departamento;
DESCRIBE cidade;
DESCRIBE aluno;

ALTER TABLE curso
	ADD cur_email VARCHAR(50) AFTER cur_nome;
    
ALTER TABLE departamento
	ADD (dep_email VARCHAR(50), dep_fax VARCHAR(50));
    
ALTER TABLE curso
	MODIFY cur_email CHAR(30);
    
ALTER TABLE departamento
	MODIFY dep_email CHAR(70), 
    MODIFY dep_fax INT;
    
ALTER TABLE departamento
    MODIFY dep_fax INT NOT NULL;
    
ALTER TABLE curso
	DROP cur_email,
    DROP cur_nome;

ALTER TABLE departamento
	ADD CONSTRAINT uq_dep_fax UNIQUE(dep_fax);
    
ALTER TABLE departamento
	DROP CONSTRAINT uq_dep_fax;
    
CREATE TABLE cidade (
	cid_codigo INT,
    cid_nome VARCHAR(50)
);

CREATE TABLE aluno (
	alu_ra INT,
    alu_nome VARCHAR(45)
);

ALTER TABLE cidade
	ADD PRIMARY KEY (cid_codigo);
    
ALTER TABLE aluno
	ADD PRIMARY KEY (alu_ra);
    
ALTER TABLE aluno
	MODIFY cid_codigo INT NOT NULL;
    
ALTER TABLE aluno
	ADD CONSTRAINT fk_aluno_cidade FOREIGN KEY (cid_codigo) REFERENCES cidade (cid_codigo);
    
ALTER TABLE aluno
	DROP FOREIGN KEY fk_aluno_cidade;
    
ALTER TABLE aluno
	DROP PRIMARY KEY;
    
DROP TABLES aluno;
DROP TABLES cidade; 
    
