USE master;
IF DB_ID('Datawarehouse') IS NULL
BEGIN 
	CREATE DATABASE Datawarehouse
	PRINT 'Database Created'
END
ELSE
	BEGIN 
	PRINT 'DATAWARE HOUSE ALREADY EXISTS'
END ;
GO
USE Datawarehouse
GO

-- it will creat the schemas if not present , if they are present it will use the allready exsists 
IF SCHEMA_ID('bronze') is NULL
BEGIN 
	EXEC('CREATE SCHEMA BRONZE');
END
ELSE
	BEGIN 
	PRINT 'SCHEMAS ALREADY EXISTS'
END;

IF SCHEMA_ID('silver') is NULL
BEGIN 
	EXEC('CREATE SCHEMA silver ');
END
ELSE
	BEGIN 
	PRINT 'SCHEMAS ALREADY EXISTS'
END;

IF SCHEMA_ID('gold') is NULL
BEGIN 
	EXEC('CREATE SCHEMA gold ');
END
ELSE
	BEGIN 
	PRINT 'SCHEMAS ALREADY EXISTS'
END;
