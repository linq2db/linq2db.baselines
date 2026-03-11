-- SQLite.MS SQLite

SELECT
	SUBSTRING([p].[FirstName], LENGTH([p].[FirstName]) - 3 + 1)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

