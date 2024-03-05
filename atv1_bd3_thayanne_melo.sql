CREATE DATABASE atv1_bd3_thayanne_melo;

USE atv1_bd3_thayanne_melo;

CREATE TABLE tbl_produto(
cod_prod int AUTO_INCREMENT PRIMARY KEY,
nome varchar(500),
descricao text,
preco decimal(10,2)
);

CREATE TABLE tbl_iten_pedido(
cod_ped int AUTO_INCREMENT PRIMARY KEY,
chave_prod int,
foreign key (chave_prod) references tbl_produto(cod_prod)
);

CREATE TABLE tbl_pedido(
chave_ped int,
dataAtual varchar(10),
foreign key (chave_ped) references tbl_iten_pedido(cod_ped)
);

INSERT INTO tbl_produto (nome, descricao, preco) values ("Notebook lenovo", "ssd 500gb, memória ram 8gb","1500");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("Laptop Dell", "SSD 512GB, memória RAM 16GB", "1800");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("MacBook Air", "SSD 256GB, memória RAM 8GB", "2000");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("HP Envy x360", "SSD 1TB, memória RAM 16GB", "1600");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("Asus ROG Strix", "SSD 1TB, memória RAM 32GB", "2500");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("Dell XPS 13", "SSD 512GB, memória RAM 16GB", "1900");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("Lenovo ThinkPad", "SSD 256GB, memória RAM 8GB", "1500");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("Acer Predator Helios", "SSD 512GB, memória RAM 16GB", "2200");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("Microsoft Surface Laptop", "SSD 256GB, memória RAM 8GB", "1700");
INSERT INTO tbl_produto (nome, descricao, preco) VALUES ("Alienware m15", "SSD 1TB, memória RAM 32GB", "2800");

SELECT * FROM tbl_produto;

INSERT INTO tbl_iten_pedido (chave_prod) VALUES (1), (3), (5);

SELECT * FROM tbl_iten_pedido;

INSERT INTO tbl_pedido (chave_ped, dataAtual) VALUES
    (1, '2024-03-05'),
    (2, '2024-03-06'),
    (3, '2024-03-07');
    

SELECT p.nome, p.descricao
FROM tbl_produto p
INNER JOIN tbl_iten_pedido ip ON p.cod_prod = ip.chave_prod;

SELECT nome, descricao
FROM tbl_produto
WHERE cod_prod = 2;

SELECT nome AS PRODUTO, descricao AS DETALHES
FROM tbl_produto;


