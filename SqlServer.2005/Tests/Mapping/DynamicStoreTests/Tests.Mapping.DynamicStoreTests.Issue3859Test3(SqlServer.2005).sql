BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicColumnsTestTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicColumnsTestTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicColumnsTestTable]', N'U') IS NULL)
	CREATE TABLE [DynamicColumnsTestTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

SELECT
	[x].[Id]
FROM
	[DynamicColumnsTestTable] [x]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicColumnsTestTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicColumnsTestTable]

