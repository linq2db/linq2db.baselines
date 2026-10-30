-- Sybase.Managed Sybase
SELECT
	RTRIM(Str_Replace([t].[NCharColumn], [t].[VarCharColumn], 'x')),
	RTRIM(Str_Replace([t].[CharColumn], [t].[VarCharColumn], 'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

