USE master;
IF DB_ID('Datawarehouse') IS NOT NULL
BEGIN 
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP  DATABASE Datawarehouse;
	
END
GO
	CREATE DATABSE Datawarehouse;
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
