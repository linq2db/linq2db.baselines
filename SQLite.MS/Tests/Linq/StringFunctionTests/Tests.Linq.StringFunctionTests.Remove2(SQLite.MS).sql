BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	SUBSTRING([p].[FirstName], 1, 1) || SUBSTRING([p].[FirstName], LENGTH([p].[FirstName]) - (Length([p].[FirstName]) - 3) + 1) = 'Jn' AND
	[p].[PersonID] = 1

