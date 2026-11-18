-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST(0 AS INTEGER),
	[t1].[Discr],
	[t1].[EntityId],
	[t1].[Value]
FROM
	[ConcatTest] [t1]
UNION ALL
SELECT
	CAST(1 AS INTEGER),
	[t2].[Discr],
	[t2].[EntityId],
	[t2].[Value]
FROM
	[ConcatTest] [t2]
WHERE
	[t2].[Discr] = 1

