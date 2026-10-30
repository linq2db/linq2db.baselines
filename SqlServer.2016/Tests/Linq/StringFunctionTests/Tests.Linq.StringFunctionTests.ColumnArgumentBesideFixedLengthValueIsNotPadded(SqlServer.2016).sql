-- SqlServer.2016
SELECT
	RTRIM(Replace([t].[NCharColumn], [t].[VarCharColumn], N'x')),
	RTRIM(Replace([t].[CharColumn], [t].[VarCharColumn], N'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

