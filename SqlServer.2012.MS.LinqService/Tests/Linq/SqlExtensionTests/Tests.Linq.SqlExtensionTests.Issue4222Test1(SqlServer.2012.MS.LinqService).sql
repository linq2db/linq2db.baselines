BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Entry]', N'U') IS NOT NULL)
	DROP TABLE [Entry]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Entry]', N'U') IS NULL)
	CREATE TABLE [Entry]
	(
		[Id]     UniqueIdentifier NOT NULL,
		[RecSrc] NVarChar(4000)       NULL,
		[Value]  Int              NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value]
FROM
	[Entry] [e]
WHERE
	[e].[RecSrc] = N'default' AND [e].[Value] = 2007

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Entry]', N'U') IS NOT NULL)
	DROP TABLE [Entry]

