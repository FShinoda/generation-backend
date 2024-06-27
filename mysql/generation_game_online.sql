CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    vidaPadrao INT,
    manaPadrao INT,
    tipoArma VARCHAR(255), 
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    raca VARCHAR(255),
    poderAtaque INT,
    poderDefesa INT,
    idClasse BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (idClasse) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, vidaPadrao, manaPadrao, tipoArma)
	VALUES ("Mago", 350, 2000, "Cajado"),
	("Cavaleiro", 1000, 1000, "Espada e Escudo"),
    ("Ninja", 700, 1100, "Adaga"),
    ("Necromante", 500, 1800, "Livro"),
    ("Bardo", 500, 1400, "Bandolin");
    
INSERT INTO tb_personagens (nome, raca, poderAtaque, poderDefesa, idClasse)
	VALUES ("Valkhein", "Anão", 4002, 1001, 5),
    ("Fadinha10", "Elfo", 3003, 200, 1),
    ("K", "Humano", 8008, 200, 2),
    ("Torbjorge", "Humano", 1100, 100, 3),
    ("Genji", "Elfo da noite", 100, 6000, 4),
    ("Garen", "Humano", 5600, 200, 2),
    ("Vi", "Anão", 1100, 100, 4),
    ("Tracer", "Elfo", 1100, 100, 1);
    
SELECT * FROM tb_personagens WHERE poderAtaque > 2000;
SELECT * FROM tb_personagens WHERE poderDefesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens p
	INNER JOIN tb_classes c ON p.idClasse = c.id; 
SELECT * FROM tb_personagens p
	INNER JOIN tb_classes c ON p.idClasse = c.id
    WHERE idClasse = 1; 
