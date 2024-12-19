BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Document]', N'U') IS NULL)
	CREATE TABLE [Document]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[s].[Id]
FROM
	[Document] [s]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Document]

