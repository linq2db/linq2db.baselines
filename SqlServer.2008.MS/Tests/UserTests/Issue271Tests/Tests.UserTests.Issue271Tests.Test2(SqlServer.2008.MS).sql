BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Entity]', N'U') IS NOT NULL)
	DROP TABLE [Entity]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Entity]', N'U') IS NULL)
	CREATE TABLE [Entity]
	(
		[CharValue]     Char               NULL,
		[VarCharValue]  VarChar(Max)       NULL,
		[NCharValue]    NChar              NULL,
		[NVarCharValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[e].[CharValue],
	[e].[VarCharValue],
	[e].[NCharValue],
	[e].[NVarCharValue]
FROM
	[Entity] [e]
WHERE
	[e].[CharValue] IN ('CharValue') AND
	[e].[VarCharValue] IN ('VarCharValue') AND
	[e].[NCharValue] IN (N'NCharValue') AND
	[e].[NVarCharValue] IN (N'NVarCharValue')

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Entity]', N'U') IS NOT NULL)
	DROP TABLE [Entity]

