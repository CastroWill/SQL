INSERT INTO tbl_autores (ID_Autor, Nome_Autor, SobreNome_Autor) VALUES (1, 'Daniel', 'Barret');
INSERT INTO tbl_autores (ID_Autor, Nome_Autor, SobreNome_Autor) VALUES (2, 'Gerald', 'Carter');
INSERT INTO tbl_autores (ID_Autor, Nome_Autor, SobreNome_Autor) VALUES (3, 'Mark', 'Sobel');
INSERT INTO tbl_autores (ID_Autor, Nome_Autor, SobreNome_Autor) VALUES (4, 'William', 'Stanek');
INSERT INTO tbl_autores (ID_Autor, Nome_Autor, SobreNome_Autor) VALUES (5, 'Richard', 'Blum');

USE db_biblioteca;

SELECT * FROM tbl_autores;

INSERT INTO tbl_editoras (Nome_Editora) values ('Prentice Hall');
INSERT INTO tbl_editoras (Nome_Editora) values ('O´Reilly');
INSERT INTO tbl_editoras (Nome_Editora) values ('Microsoft Press');
INSERT INTO tbl_editoras (Nome_Editora) values ('Wiley');

SELECT * FROM tbl_editoras;

INSERT INTO tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) VALUES ('Linux Command Line and Shell Scripting', 143856969, '20091221', 68.35, 5, 4);
INSERT INTO tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) VALUES ('SSH, the Secure Shell', 127658789, '20091221', 58.30, 1, 2);
INSERT INTO tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) VALUES ('Using Samba', 123856789, '20001221', 61.45, 2, 2);
INSERT INTO tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) VALUES ('Fedora and Red Hat Linux', 123346789, '20101101', 62.24, 3, 1);
INSERT INTO tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) VALUES ('Windows Server 2012 Inside Out', 123356789, '20040517', 66.80, 4, 3);
INSERT INTO tbl_Livro (Nome_Livro, ISBN, Data_Pub, Preco_Livro, ID_Autor, ID_Editora) VALUES ('Microsoft Exchange Server', 123366789, '20001221', 45.30, 4, 3);

SELECT * FROM tbl_livro;