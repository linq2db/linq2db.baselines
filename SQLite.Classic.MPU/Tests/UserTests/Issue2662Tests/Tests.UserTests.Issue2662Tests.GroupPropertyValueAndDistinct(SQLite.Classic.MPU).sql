-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[grp].[GroupCol],
	COUNT(*),
	COUNT(DISTINCT [grp].[LinkCol])
FROM
	[CountDistinctTest] [grp]
GROUP BY
	[grp].[GroupCol]

