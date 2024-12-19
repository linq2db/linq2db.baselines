BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [CustomTableColumn]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[CustomTableColumn]', N'U') IS NULL)
	CREATE TABLE [CustomTableColumn]
	(
		[DataTypeID] Int     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	0
FROM
	[CustomTableColumn] [x]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [CustomTableColumn]

