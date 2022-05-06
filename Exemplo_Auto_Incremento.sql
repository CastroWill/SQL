CREATE TABLE tbl_teste_incremento (
Codigo smallint primary key auto_increment,
Nome varchar(20) not null
) auto_increment=15;

insert into tbl_teste_incremento (Nome) values ('Ana');
insert into tbl_teste_incremento (Nome) values ('Maria');
insert into tbl_teste_incremento (Nome) values ('Julia');
insert into tbl_teste_incremento (Nome) values ('Joana');
insert into tbl_teste_incremento (Nome) values ('João');

Select * FROM tbl_teste_incremento;

SELECT MAX(Codigo)
FROM tbl_teste_incremento;

ALTER TABLE tbl_teste_incremento AUTO_INCREMENT = 90;

SHOW TABLES;