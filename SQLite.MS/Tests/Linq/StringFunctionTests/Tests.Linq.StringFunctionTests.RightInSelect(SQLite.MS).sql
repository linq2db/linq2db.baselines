-- SQLite.MS SQLite
SELECT
	SUBSTRING([p].[FirstName], MAX(LENGTH([p].[FirstName]) - 2, 1))
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

