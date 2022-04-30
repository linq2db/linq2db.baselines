BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	Count(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

