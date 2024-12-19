BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Document]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Document]', N'U') IS NULL)
	CREATE TABLE [Document]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

SELECT
	[s].[Id]
FROM
	[Document] [s]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Document]

