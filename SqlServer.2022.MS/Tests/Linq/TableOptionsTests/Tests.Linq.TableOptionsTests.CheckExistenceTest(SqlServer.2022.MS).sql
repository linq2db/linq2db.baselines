-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [DisposableTable]

