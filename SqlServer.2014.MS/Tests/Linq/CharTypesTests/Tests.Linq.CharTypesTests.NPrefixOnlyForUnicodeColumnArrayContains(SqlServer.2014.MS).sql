-- SqlServer.2014.MS SqlServer.2014
SELECT
	[e].[CharValue],
	[e].[VarCharValue],
	[e].[NCharValue],
	[e].[NVarCharValue]
FROM
	[CharKindsEntity] [e]
WHERE
	[e].[CharValue] IN ('CharValue') AND
	[e].[VarCharValue] IN ('VarCharValue') AND
	[e].[NCharValue] IN (N'NCharValue') AND
	[e].[NVarCharValue] IN (N'NVarCharValue')

