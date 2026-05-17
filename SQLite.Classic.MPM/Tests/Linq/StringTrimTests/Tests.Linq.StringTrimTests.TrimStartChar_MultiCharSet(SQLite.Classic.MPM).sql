-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	LTRIM([t].[CharColumn], '.+')
FROM
	[StringTrimTable] [t]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

