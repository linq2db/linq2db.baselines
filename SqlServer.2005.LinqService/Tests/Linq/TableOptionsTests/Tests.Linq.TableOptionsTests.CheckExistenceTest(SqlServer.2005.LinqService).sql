BeforeExecute
-- SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NOT NULL)
	DROP TABLE [DisposableTable]

