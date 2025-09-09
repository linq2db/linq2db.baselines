BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE IF EXISTS [DisposableTable]

