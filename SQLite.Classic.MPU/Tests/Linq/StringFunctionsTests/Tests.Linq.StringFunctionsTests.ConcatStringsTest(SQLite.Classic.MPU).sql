BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Coalesce([t].[Value2], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Coalesce([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	SUBSTR(Coalesce(' -> ' || [t].[Value3], '') || Coalesce(' -> ' || [t].[Value1], '') || Coalesce(' -> ' || [t].[Value2], ''), 5)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	SUBSTR(Coalesce(' -> ' || [t].[Value3], '') || Coalesce(' -> ' || [t].[Value3], ''), 5)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

