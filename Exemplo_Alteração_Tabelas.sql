USE db_biblioteca;

ALTER TABLE tbl_livro
DROP COLUMN ID_Autor;

select * FROM TBL_LIVRO;

ALTER TABLE tbl_livro
ADD ID_Autor smallint NOT null;

ALTER TABLE tbl_Livro
ADD constraint fk_ID_Autor
FOREIGN KEY (ID_AUTOR)
REFERENCES tbl_autores (ID_Autor);

ALTER TABLE tbl_livro
ADD ID_editora smallint NOT null;

ALTER TABLE tbl_Livro
ADD constraint fk_ID_editora
FOREIGN KEY (ID_editora)
REFERENCES tbl_editoras (ID_editora);

ALTER TABLE tbl_livro
ADD COLUMN ID_Autor smallint;

ALTER TABLE Clientes
ADD primary key (ID_Cliente);