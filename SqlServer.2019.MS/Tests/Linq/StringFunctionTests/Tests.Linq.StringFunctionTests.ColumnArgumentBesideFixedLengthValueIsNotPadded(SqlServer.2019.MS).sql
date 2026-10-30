-- SqlServer.2019.MS SqlServer.2019
SELECT
	RTRIM(Replace([t].[NCharColumn], CAST([t].[VarCharColumn] AS VarChar(1)), N'x')),
	RTRIM(Replace([t].[CharColumn], CAST([t].[VarCharColumn] AS VarChar(1)), N'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

