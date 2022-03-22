CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    habilidade VARCHAR(200) NOT NULL,
    arma varchar(200) NOT NULL
);

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Feiticeiro", "Bola de fogo", "Cajado");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Arqueiro", "Chuva de Flechas", "Arco e Flecha");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Druida", "Gelo", "Livro");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Guerreiro", "Excalibur", "Espada");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Curandeiro", "Ressureição", "Gaze");

select * from tb_classes;

CREATE TABLE tb_personagens(
	id INT AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	nivel INT NOT NULL, 
	ataque int NOT NULL, 
	defesa int NOT NULL, 
	classe_id INT NOT NULL, 
	PRIMARY KEY (id),
	FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Mokona", 100, 300, 100, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Minseok", 100, 3000, 2800, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Junmyeon", 100, 2000, 2000, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Baekhyun", 10, 1000, 1500, 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongdae", 1000, 1300, 1110, 4);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Chanyeol", 500, 2300, 3000, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Kyungsoo", 400, 1800, 2200, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongin", 300, 1300, 850, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Sehun", 150, 2100, 900, 3);

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
-- Forma 01
SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

-- Forma 02
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
SELECT * FROM tb_personagens WHERE nome like "%c%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
SELECT * 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
SELECT *
FROM tb_personagens INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.id = 2;
