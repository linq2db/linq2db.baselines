BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [CustomTableColumn]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[CustomTableColumn]', N'U') IS NULL)
	CREATE TABLE [CustomTableColumn]
	(
		[DataTypeID] Int     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	0
FROM
	[CustomTableColumn] [x]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [CustomTableColumn]

