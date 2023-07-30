BeforeExecute
--  SqlServer.2016

DROP TABLE IF EXISTS [MyEntity]

BeforeExecute
--  SqlServer.2016

IF (OBJECT_ID(N'[MyEntity]', N'U') IS NULL)
	CREATE TABLE [MyEntity]
	(
		[Id]   BigInt        NOT NULL,
		[Name] NVarChar(256) NOT NULL
	)

BeforeExecute
--  SqlServer.2016

DROP TABLE IF EXISTS [MyEntity]

BeforeExecute
--  SqlServer.2016

IF (OBJECT_ID(N'[MyEntity]', N'U') IS NULL)
	CREATE TABLE [MyEntity]
	(
		[Id]   BigInt        NOT NULL,
		[Name] NVarChar(256) NOT NULL
	)

