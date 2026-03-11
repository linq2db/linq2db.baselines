-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[grp].[GroupCol],
	COUNT(*),
	COUNT(DISTINCT [grp].[LinkCol])
FROM
	[CountDistinctTest] [grp]
GROUP BY
	[grp].[GroupCol]

