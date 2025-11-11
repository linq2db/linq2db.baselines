-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3],
	[t1].[Value4]
FROM
	[SampleClass] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Coalesce([t].[Value2], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Coalesce([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	SUBSTR(Coalesce(' -> ' || [t].[Value3], '') || Coalesce(' -> ' || [t].[Value1], '') || Coalesce(' -> ' || [t].[Value2], ''), 5)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	SUBSTR(Coalesce(' -> ' || [t].[Value3], '') || Coalesce(' -> ' || [t].[Value3], ''), 5)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

