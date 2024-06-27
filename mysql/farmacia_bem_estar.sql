CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    preco DECIMAL(10,2),
    descricao VARCHAR(255),
	formato VARCHAR(255),
    idCategoria BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (idCategoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
	VALUES ("Higiene", "produtos para higiene em geral"),
    ("Remédio", "pilulas, comprimidos, pomadas etc."),
    ("Comida", "Chocolates etc que ficam no caixa"),
    ("Nutrição", "nutritivos para bebes e geriatrico"),
    ("Pele e Cabelo", "nutrientes para pele e cabelo");
    
INSERT INTO tb_produtos(nome, preco, descricao, formato, idCategoria)
	VALUES ("Fralda", 300, "Fralda calça", "Caixa 50un", 1),
    ("Desvenlafaxina", 100, "antidepressivo", "Caixa 30 comprimidos", 2),
    ("Barrinha de cereal", 8, "barrinha nutritiva de chocolate", "1un chocolate", 3),
    ("Manteiga de cacau", 12, "protetor labial", "1un bastao", 5),
    ("Shampoo Eusevi", 22, "shampoo para cabelos crespos", "500ml", 5),
    ("Ensure", 120, "nutrição geriatrica", "500g lata chocolate", 4),
    ("Flogorosa", 69, "remedio intimo", "sache 4 sacos", 2),
    ("Dia d", 33, "remedio abortivo", "pilula unica", 2);
    
SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos p 
	INNER JOIN tb_categorias c ON c.id = p.idCategoria;
SELECT * FROM tb_produtos p 
	INNER JOIN tb_categorias c ON c.id = p.idCategoria
    WHERE idCategoria = 5;
