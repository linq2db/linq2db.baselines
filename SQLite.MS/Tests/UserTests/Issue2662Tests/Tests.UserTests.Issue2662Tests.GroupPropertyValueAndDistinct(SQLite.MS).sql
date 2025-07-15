BeforeExecute
-- SQLite.MS SQLite

SELECT
	[grp].[GroupCol],
	COUNT(*),
	COUNT(DISTINCT [grp].[LinkCol])
FROM
	[CountDistinctTest] [grp]
GROUP BY
	[grp].[GroupCol]

