BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Document]', N'U') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Document]', N'U') IS NULL)
	CREATE TABLE [Document]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

SELECT
	[s].[Id]
FROM
	[Document] [s]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Document]', N'U') IS NOT NULL)
	DROP TABLE [Document]

