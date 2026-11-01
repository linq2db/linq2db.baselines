-- SqlServer.2012.MS SqlServer.2012
SELECT
	RTRIM(Replace([t].[NCharColumn], [t].[VarCharColumn], N'x')),
	RTRIM(Replace([t].[CharColumn], [t].[VarCharColumn], 'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

