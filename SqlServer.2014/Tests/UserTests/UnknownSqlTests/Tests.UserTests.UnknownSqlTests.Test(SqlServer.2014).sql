BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[CustomTableColumn]', N'U') IS NOT NULL)
	DROP TABLE [CustomTableColumn]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[CustomTableColumn]', N'U') IS NULL)
	CREATE TABLE [CustomTableColumn]
	(
		[DataTypeID] Int     NULL
	)

BeforeExecute
-- SqlServer.2014

SELECT
	0
FROM
	[CustomTableColumn] [x]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[CustomTableColumn]', N'U') IS NOT NULL)
	DROP TABLE [CustomTableColumn]

