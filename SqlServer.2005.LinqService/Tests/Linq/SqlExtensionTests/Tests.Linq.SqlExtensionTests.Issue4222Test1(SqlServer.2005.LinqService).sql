BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entry]', N'U') IS NOT NULL)
	DROP TABLE [Entry]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entry]', N'U') IS NULL)
	CREATE TABLE [Entry]
	(
		[Id]     UniqueIdentifier NOT NULL,
		[RecSrc] NVarChar(4000)       NULL,
		[Value]  Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Entry]', N'U') IS NOT NULL)
	DROP TABLE [Entry]

