-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	RTRIM([t].[NVarCharColumn] || '...++', '.+')
FROM
	[StringTrimTable] [t]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

