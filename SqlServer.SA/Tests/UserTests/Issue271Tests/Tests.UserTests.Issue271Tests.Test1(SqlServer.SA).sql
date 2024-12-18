BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Entity]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Entity]', N'U') IS NULL)
	CREATE TABLE [Entity]
	(
		[CharValue]     Char               NULL,
		[VarCharValue]  VarChar(Max)       NULL,
		[NCharValue]    NChar              NULL,
		[NVarCharValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[e].[CharValue],
	[e].[VarCharValue],
	[e].[NCharValue],
	[e].[NVarCharValue]
FROM
	[Entity] [e]
WHERE
	[e].[CharValue] = 'CharValue' AND
	[e].[CharValue] IS NOT NULL AND
	[e].[VarCharValue] = 'VarCharValue' AND
	[e].[VarCharValue] IS NOT NULL AND
	[e].[NCharValue] = N'NCharValue' AND
	[e].[NCharValue] IS NOT NULL AND
	[e].[NVarCharValue] = N'NVarCharValue' AND
	[e].[NVarCharValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Entity]

