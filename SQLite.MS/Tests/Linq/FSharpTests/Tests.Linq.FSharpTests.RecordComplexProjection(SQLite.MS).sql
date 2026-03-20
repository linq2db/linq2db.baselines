-- SQLite.MS SQLite

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] = 'John' AND
	[p].[LastName] = 'Pupkin'
LIMIT 2

