-- SQLite.Classic SQLite
SELECT
	CAST(0 AS INTEGER),
	[t].[Discr],
	[t].[EntityId],
	[t].[Value]
FROM
	[ConcatTest] [t]
WHERE
	[t].[Discr] = 0
UNION ALL
SELECT
	CAST(1 AS INTEGER),
	[t1].[Discr],
	[t1].[EntityId],
	[t1].[Value]
FROM
	[ConcatTest] [t1]
WHERE
	[t1].[Discr] = 1

