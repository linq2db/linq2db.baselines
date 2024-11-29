BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[DynamicColumnsTestTable]', N'U') IS NULL)
	CREATE TABLE [DynamicColumnsTestTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DynamicColumnsTestTable]

