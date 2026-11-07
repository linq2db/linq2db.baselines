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
	SUBSTRING([p].[FirstName], MAX(LENGTH([p].[FirstName]) - 2, 1)) = 'ohn' AND
	[p].[PersonID] = 1

