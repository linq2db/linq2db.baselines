-- Sybase.Managed Sybase
SELECT
	[t].[Id],
	Str_Replace([t].[VarCharColumn], 'A', 'Ж'),
	Str_Replace([t].[VarCharColumn], 'A', 'Ж')
FROM
	[StringTypesTable] [t]

-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

