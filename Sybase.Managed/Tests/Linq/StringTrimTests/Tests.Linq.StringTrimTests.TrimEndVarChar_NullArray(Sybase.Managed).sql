-- Sybase.Managed Sybase

SELECT
	RTRIM(Coalesce([t].[VarCharColumn], '') || '   ')
FROM
	[StringTrimTable] [t]

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

