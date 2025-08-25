BeforeExecute
-- SqlServer.2019 (asynchronously)

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [DisposableTable]

