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
	CHARINDEX('p', Substring([p].[LastName], 2, Len([p].[LastName]))) = 2 AND
	CHARINDEX('p', Substring([p].[LastName], 2, Len([p].[LastName]))) <> 0 AND
	[p].[PersonID] = 1

