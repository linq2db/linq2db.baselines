BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Entity]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Entity]', N'U') IS NULL)
	CREATE TABLE [Entity]
	(
		[CharValue]     Char               NULL,
		[VarCharValue]  VarChar(Max)       NULL,
		[NCharValue]    NChar              NULL,
		[NVarCharValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[e].[CharValue],
	[e].[VarCharValue],
	[e].[NCharValue],
	[e].[NVarCharValue]
FROM
	[Entity] [e]
WHERE
	[e].[CharValue] = 'CharValue' AND
	[e].[VarCharValue] = 'VarCharValue' AND
	[e].[NCharValue] = N'NCharValue' AND
	[e].[NVarCharValue] = N'NVarCharValue'

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Entity]

