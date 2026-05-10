-- SQLite.MS SQLite

SELECT
	RTRIM([t].[CharColumn] || '...++', '.+')
FROM
	[StringTrimTable] [t]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

