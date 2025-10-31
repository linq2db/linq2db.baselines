-- SqlServer.2017

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

-- SqlServer.2017

DROP TABLE IF EXISTS [DisposableTable]

