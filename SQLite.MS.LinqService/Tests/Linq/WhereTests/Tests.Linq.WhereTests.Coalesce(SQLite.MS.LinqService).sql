BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Coalesce([p].[MiddleName], 'None') = 'None' AND
	[p].[FirstName] = 'John'

