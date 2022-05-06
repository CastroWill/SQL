SHOW INDEX FROM tbl_editoras;

EXPLAIN SELECT * FROM tbl_editoras
WHERE Nome_Editora = 'Springer';

SELECT * FROM tbl_editoras;

CREATE INDEX idx_editora ON tbl_editoras(Nome_editora);

DROP INDEX idx_editora ON tbl_editoras;