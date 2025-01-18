BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[EntityId],
	[t1].[Discr],
	[t1].[Value],
	NULL,
	NULL,
	NULL
FROM
	[ConcatTest] [t1]
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	[t2].[EntityId],
	[t2].[Discr],
	[t2].[Value]
FROM
	[ConcatTest] [t2]
WHERE
	[t2].[Discr] = 1

