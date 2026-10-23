-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[GroupId],
	COUNT(*),
	COUNT(CASE
		WHEN [t].[DataValue] % 2 = 0 THEN 1
		ELSE NULL
	END),
	COUNT(DISTINCT [t].[DataValue])
FROM
	[AggregationData] [t]
WHERE
	[t].[DataValue] IS NOT NULL
GROUP BY
	[t].[GroupId]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

