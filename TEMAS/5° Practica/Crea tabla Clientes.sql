Use Practica 
GO
Create Table Clientes
(
ID_CLIENTE INT PRIMARY KEY, 
NOMBRE		VARCHAR (50),
APATERNO	VARCHAR (50),
AMATERNO	VARCHAR (50),
FECHA_NACIMIENTO DATE
)
 
--GO  
--CREATE CLUSTERED INDEX [IX_ID_CLIENTE] ON [dbo].[Clientes]  ([ID_CLIENTE] ASC)  
GO  
CREATE NONCLUSTERED INDEX [IX_NOMBRE] ON [dbo].[Clientes] ([NOMBRE])   
GO 
exec sp_helpindex '[Clientes]'
GO 
IF OBJECT_ID('dbo.SQ_Clientes') IS NULL
 BEGIN
	 CREATE SEQUENCE dbo.SQ_Clientes
	 START WITH 1
	 INCREMENT BY 1
	 MINVALUE 1
	--CYCLE
 END
 ELSE
 BEGIN 
	PRINT 'YA EXISTE LA SECUENCIA'
 END


 Insert into Clientes values ( 
NEXT VALUE FOR SQ_Clientes, 
'JORGE',
'SANTOS',
'MARQUEZ',
'1992-07-27' )

select * from clientes 

--drop table clientes