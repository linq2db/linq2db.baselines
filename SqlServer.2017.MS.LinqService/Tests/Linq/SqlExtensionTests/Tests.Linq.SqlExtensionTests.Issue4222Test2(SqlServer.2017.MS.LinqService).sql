BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Entry]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Entry]', N'U') IS NULL)
	CREATE TABLE [Entry]
	(
		[Id]     UniqueIdentifier NOT NULL,
		[RecSrc] NVarChar(4000)       NULL,
		[Value]  Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Entry]

