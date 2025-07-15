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

