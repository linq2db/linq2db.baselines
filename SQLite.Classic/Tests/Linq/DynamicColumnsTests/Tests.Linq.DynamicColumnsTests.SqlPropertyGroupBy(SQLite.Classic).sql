BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

