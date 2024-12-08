BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CustomTableColumn]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[CustomTableColumn]', N'U') IS NULL)
	CREATE TABLE [CustomTableColumn]
	(
		[DataTypeID] Int     NULL
	)

BeforeExecute
-- SqlServer.2017

SELECT
	0
FROM
	[CustomTableColumn] [x]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [CustomTableColumn]

