BeforeExecute
--  Sybase.Managed Sybase

IF (OBJECT_ID(N'MyEntity') IS NOT NULL)
	DROP TABLE [MyEntity]

BeforeExecute
--  Sybase.Managed Sybase

IF (OBJECT_ID(N'MyEntity') IS NULL)
	EXECUTE('
		CREATE TABLE [MyEntity]
		(
			[Id]   BigInt        NOT NULL,
			[Name] NVarChar(256) NOT NULL
		)
	')

BeforeExecute
--  Sybase.Managed Sybase

IF (OBJECT_ID(N'MyEntity') IS NOT NULL)
	DROP TABLE [MyEntity]

BeforeExecute
--  Sybase.Managed Sybase

IF (OBJECT_ID(N'MyEntity') IS NULL)
	EXECUTE('
		CREATE TABLE [MyEntity]
		(
			[Id]   BigInt        NOT NULL,
			[Name] NVarChar(256) NOT NULL
		)
	')

