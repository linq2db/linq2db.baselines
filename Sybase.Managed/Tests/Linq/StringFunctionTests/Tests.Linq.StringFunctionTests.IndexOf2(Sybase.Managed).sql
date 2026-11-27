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
	CHARINDEX('e', Substring([p].[LastName], 3, Len([p].[LastName]))) = 3 AND
	CHARINDEX('e', Substring([p].[LastName], 3, Len([p].[LastName]))) <> 0 AND
	[p].[PersonID] = 2

