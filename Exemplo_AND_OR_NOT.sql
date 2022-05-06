SELECT * FROM tbl_Livro
WHERE ID_Livro > 2 AND ID_Autor < 3;

SELECT * FROM tbl_Livro
WHERE ID_Livro > 2 OR ID_Autor < 3;

SELECT * FROM tbl_Livro
WHERE ID_Livro > 2 AND NOT ID_Autor < 3;
