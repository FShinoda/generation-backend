CREATE DATABASE bd_rh;
use bd_rh;

CREATE TABLE tb_colaborador(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    salario DECIMAL(10,2),
    cargo VARCHAR(50),
    dataAdmissao date,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaborador(nome, salario, cargo, dataAdmissao)
	VALUES ("Valdemiro", 2500, "Analista de dados Trainee", "2024-01-05"),
    ("Roberta", 3400, "Engenheira de dados Jr", "2024-05-30"),
    ("Yuri", 5000, "Desenvolvedor Backend Pleno", "2023-03-21"),
    ("Fernanda", 4000, "Desenvolvedora Fullstack Junior", "2024-08-30"),
    ("Camila", 1500, "EStagiária Desenvolvedora Frontend", "2023-01-01");
    
SELECT * FROM tb_colaborador WHERE salario > 2000;
SELECT * FROM tb_colaborador WHERE salario < 2000;

ALTER TABLE tb_colaborador
	ADD pronomes VARCHAR(50);

UPDATE tb_colaborador 
	SET pronomes = "ela/dela"
    WHERE id = 5;
