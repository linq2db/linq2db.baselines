-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NOT NULL)
	DROP TABLE [DisposableTable]

