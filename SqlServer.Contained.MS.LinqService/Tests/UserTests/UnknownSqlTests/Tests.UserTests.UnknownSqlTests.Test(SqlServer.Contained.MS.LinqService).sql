BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [CustomTableColumn]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[CustomTableColumn]', N'U') IS NULL)
	CREATE TABLE [CustomTableColumn]
	(
		[DataTypeID] Int     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	0
FROM
	[CustomTableColumn] [x]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [CustomTableColumn]

