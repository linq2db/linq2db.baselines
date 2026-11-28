-- SQLite.Classic SQLite
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	SUBSTRING([p].[FirstName], 1, 2) || '123' || SUBSTRING([p].[FirstName], MAX(LENGTH([p].[FirstName]) - (Length([p].[FirstName]) - 3) + 1, 1)) = 'Jo123n' AND
	[p].[PersonID] = 1

