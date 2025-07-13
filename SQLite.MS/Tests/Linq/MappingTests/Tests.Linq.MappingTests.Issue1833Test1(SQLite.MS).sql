BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[FirstName] || ':' || [e].[LastName]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1
LIMIT 2

