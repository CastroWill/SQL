use MyCompany;

create table Med_Pup_P1(
IDMed int identity primary key,
Amostra_Pup nvarchar(100) not null,
);

drop table Med_Pup_P1;

insert into Med_Pup_P1(Amostra_Pup) values ('11');
insert into Med_Pup_P1(Amostra_Pup) values ('12.6');
insert into Med_Pup_P1(Amostra_Pup) values ('11.7');
insert into Med_Pup_P1(Amostra_Pup) values ('10.5');
insert into Med_Pup_P1(Amostra_Pup) values ('11.3');


select * from Med_Pup_P1;



create database test;


SELECT * FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
'Excel 12.0; Database=C:\Users\Willa\Downloads\produtos.xls; HDR=YES; IMEX=1',
'SELECT * FROM [Plan1$]') 
GO

USE test;
GO
SELECT * INTO Data_dq
FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
'Excel 12.0; Database=C:\Users\Willa\Downloads\produtos.xls; HDR=YES; IMEX=1',
'SELECT * FROM [Plan1$]') 

USE [master]
GO

--CONFIGURANDO À INSTÂNCIA SQL PARA ACEITAR OPÇÕES AVANÇADAS
EXEC sp_configure 'show advanced options', 1
RECONFIGURE
GO

--HABILITANDO O USO DE CONSULTAS DISTRIBUÍDAS
EXEC sp_configure 'Ad Hoc Distributed Queries', 1
RECONFIGURE
GO

USE [master]
GO
--ADICIONANDO OS DRIVERS NA INSTÂNCIA SQL
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'AllowInProcess', 1
GO

EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'DynamicParameters', 1
GO