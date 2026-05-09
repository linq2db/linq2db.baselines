-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Str],
	Length([t].[Str]),
	'original-' || Coalesce([t].[Str], '')
FROM
	[TestLengthModel] [t]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

