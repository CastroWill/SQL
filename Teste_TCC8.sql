CREATE DATABASE TESTE;

USE TESTE;

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

Use MyCompany
GO

SELECT * FROM FUNCIONÁRIOS;
SELECT * FROM VIAGENS;
SELECT * FROM MED_PUP;
SELECT * FROM MED_HEART;

Use MyCompany
GO

INSERT INTO MED_PUP (FK_ID_VIAGEM, MED_DATE, MED_TIME, AM1, AM2, AM3, AM4, AM5) SELECT * 
FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0', 'Excel 12.0; Database=C:\Users\Willa\OneDrive\Área de Trabalho\Relatórios\Viagem 4 2020-11-29.xls; HDR=YES; IMEX=1',
'SELECT * FROM [Pup$]')

INSERT INTO OPENROWSET('Microsoft.ACE.OLEDB.12.0',
'Excel 12.0; Database=C:\Users\Willa\OneDrive\Área de Trabalho\Relatórios\Viagem 4 2020-11-29.xls; HDR=YES; IMEX=1',
'SELECT * FROM [Pup$]') SELECT * FROM MED_PUP;

SELECT * INTO MED_PUP FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0',
'Excel 12.0; Database=C:\Users\Willa\OneDrive\Área de Trabalho\Estudo\TCC\def_main\Relatórios\Viagem 2 2020-11-26.xls; HDR=YES; IMEX=1',
'SELECT * FROM [Pup$]') 

SELECT * FROM MED_PUP

EXEC sp_linkedservers
EXEC sp_dropserver MED_PUP;
EXEC sp_addlinkedserver "MED_PUP", "Jet 12.0", "Microsoft.Jet.OLEDB.12.0", "C:\Users\Willa\OneDrive\Área de Trabalho\Estudo\TCC\def_main\Relatórios\Viagem 2 2020-11-26.xls", NULL, "Excel 12.0";

INSERT INTO MED_PUP (FK_ID_VIAGEM, MED_DATE, MED_TIME, AM1, AM2, AM3, AM4, AM5) SELECT FK_ID_VIAGEM, MED_DATE, MED_TIME, AM1, AM2, AM3, AM4, AM5 
FROM OPENDATASOURCE('Microsoft.ACE.OLEDB.12.0', 
'C:\Users\Willa\OneDrive\Área de Trabalho\Estudo\TCC\def_main\Relatórios\Viagem 2 2020-11-26.xls')...[Pup$];




