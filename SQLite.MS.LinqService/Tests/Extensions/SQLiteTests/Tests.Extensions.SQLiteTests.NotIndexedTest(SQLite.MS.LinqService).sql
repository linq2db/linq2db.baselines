BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p] NOT INDEXED
WHERE
	[p].[PersonID] > 0

