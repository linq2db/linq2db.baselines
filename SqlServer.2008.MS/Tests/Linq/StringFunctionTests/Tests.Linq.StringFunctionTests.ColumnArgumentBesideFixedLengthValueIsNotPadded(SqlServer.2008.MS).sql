-- SqlServer.2008.MS SqlServer.2008
SELECT
	RTRIM(Replace([t].[NCharColumn], [t].[VarCharColumn], N'x')),
	RTRIM(Replace([t].[CharColumn], [t].[VarCharColumn], N'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

