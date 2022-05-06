
create database db_funcionarios;

use db_funcionarios; 

CREATE TABLE IF NOT EXISTS tbl_teste (
ID_Func smallint AUTO_INCREMENT PRIMARY KEY,
Nome_Func Varchar(50) NOT NULL,
Img_pup longblob NOT NULL
);

INSERT INTO tbl_teste (Nome_Func) values ('Will');

CREATE TABLE IF NOT EXISTS tbl_pupila (
ID_Func smallint AUTO_INCREMENT PRIMARY KEY,
Nome_Func Varchar(50) NOT NULL,
DmPupila_Func INT NOT NULL
);

drop table tbl_teste;

select * from tbl_teste;

SELECT Img_pup FROM tbl_teste WHERE ID_Func = 1;


