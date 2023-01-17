-- Active: 1673958218368@@127.0.0.1@3306


-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, "bulbasaur", "grass", 45, 49, 49, 65, 65, 45),
    (2, "ivysaur", "grass", 60, 62, 63, 80, 80, 60),
    (3, "venusaur", "grass", 80, 82, 83, 100, 100, 80),
    (4, "charmander", "fire", 39, 52, 43, 60, 50, 65),
    (5, "charmeleon", "fire", 58, 64, 58, 80, 65, 80),
    (6, "charizard", "fire", 78, 84, 78, 109, 85, 100),
    (7, "squirtle", "water", 44, 48, 65, 50, 64, 43),
    (8, "wartortle", "water", 59, 63, 80, 65, 80, 58),
    (9, "blastoise", "water", 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;

-- Práticas

-- Pokemons com speed maior que 60
SELECT * FROM pokemons
WHERE speed > 60;

-- pokemons com atck e spl-atck maikor que 60
SELECT * FROM pokemons
WHERE attack > 60
AND special_attack > 60;

-- buscar pokemons que tenham na coluna name "saur" no final
SELECT * FROM pokemons
WHERE name LIKE "%saur";

-- busque pela média simples da coluna hp
SELECT AVG(hp) as mediaHp
FROM pokemons;

-- busque o número de  linhas  da tabela pokémons
SELECT COUNT (*) as numeroLinhas FROM pokemons;

-- Busque todos os pokémons e ordene-os baseado na coluna defense em ordem decrescente
SELECT * FROM pokemons
ORDER BY "defense" DESC;

-- Busque o número de pokémons cadastrados, mas agora agrupe o resultado baseado na coluna type
SELECT * FROM pokemons
ORDER BY type DESC;

-- Busque por todos os pokémons, limite o resultado a 3 linhas iniciando a partir da quinta linha
SELECT * FROM pokemons
LIMIT 3
OFFSET 5;

-- BUSQUE TODOS OS POKÉMONS QUE POSSUEM A COLUNA TYPE VALENDO FIRE OU GRASS
-- ORDENAR CRESCENTE  BASEADO NA COLUNA ATTACK
-- RESULTADO DAS LINHAS LIMITADO A 3 LINHAS E INICIADO A PARTIR DA TERCEIRA LINHA 
SELECT * FROM pokemons
WHERE type = "fire"
OR type = "grass"
ORDER BY attack ASC
LIMIT 3
OFFSET 3;