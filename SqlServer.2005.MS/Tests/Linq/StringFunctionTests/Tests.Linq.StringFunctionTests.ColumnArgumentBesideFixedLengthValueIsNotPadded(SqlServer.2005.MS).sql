-- SqlServer.2005.MS SqlServer.2005
SELECT
	RTRIM(Replace([t].[NCharColumn], [t].[VarCharColumn], N'x')),
	RTRIM(Replace([t].[CharColumn], [t].[VarCharColumn], N'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

