-- SQLite.Classic SQLite
SELECT
	CAST(0 AS Float)
FROM
	[UnionAggregateLeft] [t1]
UNION ALL
SELECT
	AVG([g_1].[Id])
FROM
	[UnionAggregateRight] [g_1]
GROUP BY
	[g_1].[Id]

