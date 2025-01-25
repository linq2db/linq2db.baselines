BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[EntityId],
	[t].[Discr],
	[t].[Value],
	NULL,
	NULL,
	NULL
FROM
	[ConcatTest] [t]
WHERE
	[t].[Discr] = 0
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	[t1].[EntityId],
	[t1].[Discr],
	[t1].[Value]
FROM
	[ConcatTest] [t1]
WHERE
	[t1].[Discr] = 1

