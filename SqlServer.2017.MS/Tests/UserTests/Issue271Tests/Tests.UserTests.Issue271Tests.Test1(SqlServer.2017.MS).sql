BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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

