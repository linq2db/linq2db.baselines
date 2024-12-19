BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[DynamicColumnsTestTable]', N'U') IS NULL)
	CREATE TABLE [DynamicColumnsTestTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

SELECT
	[x].[Id]
FROM
	[DynamicColumnsTestTable] [x]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

