CREATE DATABASE IF NOT EXISTS dml;
USE dml;

--
-- Table structure for table `cidade`
--
DROP TABLE IF EXISTS cidade;
CREATE TABLE cidade (
  cid_codigo int(11) NOT NULL,
  cid_nome varchar(45) NOT NULL,
  PRIMARY KEY (cid_codigo)
);

--
-- Dumping data for table `cidade`
--
LOCK TABLES cidade WRITE;
INSERT INTO cidade VALUES (1,'Cornélio Procópio'),(2,'Londrina'),(3,'Maringá');
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--
DROP TABLE IF EXISTS departamento;
CREATE TABLE departamento (
  dep_codigo int(11) NOT NULL,
  dep_nome varchar(45) NOT NULL,
  PRIMARY KEY (dep_codigo)
);

--
-- Dumping data for table `departamento`
--

LOCK TABLES departamento WRITE;
INSERT INTO departamento VALUES (1,'Departamento Acadêmico de Computação'),(2,'Departamento Acadêmico de Elétrica'),(3,'Departamento Acadêmico de Matemática'),(4,'Departamento Acadêmico de Eletrônica'),(5,'Departamento Acadêmico de Eletrotécnica'),(6,'Departamento Acadêmico de Mecânica');
UNLOCK TABLES;
--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS curso;
CREATE TABLE curso (
  cur_codigo int(11) NOT NULL,
  cur_nome varchar(45) NOT NULL,
  dep_codigo int(11) NOT NULL,
  PRIMARY KEY (cur_codigo),
  CONSTRAINT fk_curso_departamento FOREIGN KEY (dep_codigo) REFERENCES departamento (dep_codigo)
);

--
-- Dumping data for table `curso`
--

LOCK TABLES curso WRITE;
INSERT INTO curso VALUES (1,'Engenharia de Computação',1),(2,'Engenharia Elétrica',2),(3,'Engenharia Mecânica',6),(4,'Engenharia de Software',1),(5,'TADS',1);
UNLOCK TABLES;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS aluno;
CREATE TABLE aluno (
  alu_ra int(11) NOT NULL,
  alu_nome varchar(45) NOT NULL,
  alu_apelido varchar(45) NOT NULL,
  alu_vlr_bolsa decimal(6,2) NOT NULL,
  cid_codigo int(11) NOT NULL,
  cur_codigo int(11) NOT NULL,
  PRIMARY KEY (alu_ra),
  CONSTRAINT fk_aluno_cidade FOREIGN KEY (cid_codigo) REFERENCES cidade (cid_codigo),
  CONSTRAINT fk_aluno_curso FOREIGN KEY (cur_codigo) REFERENCES curso (cur_codigo)
);

--
-- Dumping data for table `aluno`
--

LOCK TABLES aluno WRITE;
INSERT INTO aluno VALUES (1,'Johannes','Come Muito',550.00,1,1),(2,'Sebastian','Dorminhoco',700.00,2,3),(3,'Lisa','Nerd',400.00,3,1),(4,'Michaela','Come Pouco',480.00,1,4),(5,'Hanka','Dorme Pouco',850.00,2,2);
UNLOCK TABLES;

UPDATE aluno 
SET 
    alu_vlr_bolsa =  alu_vlr_bolsa * 1.05;