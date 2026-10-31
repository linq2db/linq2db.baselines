-- SqlServer.2014.MS SqlServer.2014
SELECT
	RTRIM(Replace([t].[NCharColumn], [t].[VarCharColumn], N'x')),
	RTRIM(Replace([t].[CharColumn], [t].[VarCharColumn], N'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

