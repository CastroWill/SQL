CREATE TABLE IF NOT EXISTS tbl_Livro (
ID_Livro smallint AUTO_INCREMENT PRIMARY KEY,
Nome_Livro Varchar(50) NOT NULL,
ISBN Varchar(30) NOT NULL,
ID_Autor smallint NOT NULL,
Data_Pub DATE NOT NULL,
Preco_Livro decimal NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_autores (
ID_Autor SMALLINT PRIMARY KEY,
Nome_Autor VARCHAR(50),
Sobrenome_Autor VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS  tbl_editoras(
ID_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
Nome_Editora VARCHAR(50) NOT NULL
);

CREATE TABLE Compras (
ID_Compra SMALLINT PRIMARY KEY,
Codigo_Produto VARCHAR(50),
Data_Compra DATE,
FOREIGN KEY (Codigo_Produto) REFERENCES Produtos(Cod_Produto)
);

SHOW TABLES;
