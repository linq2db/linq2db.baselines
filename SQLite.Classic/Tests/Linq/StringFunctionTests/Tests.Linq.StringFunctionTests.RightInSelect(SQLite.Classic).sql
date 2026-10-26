-- SQLite.Classic SQLite
SELECT
	SUBSTRING([p].[FirstName], LENGTH([p].[FirstName]) - 2)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

