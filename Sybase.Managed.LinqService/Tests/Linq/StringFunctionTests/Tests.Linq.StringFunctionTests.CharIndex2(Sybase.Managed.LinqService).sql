BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex('p', Substring([p].[LastName], 2, Len([p].[LastName]))) + 1 = 3 AND
	[p].[PersonID] = 1

