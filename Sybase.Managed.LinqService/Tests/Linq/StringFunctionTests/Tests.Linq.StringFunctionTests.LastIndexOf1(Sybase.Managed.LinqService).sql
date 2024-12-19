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
	(Len([p].[LastName]) - CharIndex('p', Reverse([p].[LastName]))) - Len('p') = 1 AND
	CharIndex('p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

