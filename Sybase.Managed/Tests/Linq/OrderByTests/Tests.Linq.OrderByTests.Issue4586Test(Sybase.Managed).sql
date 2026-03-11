-- Sybase.Managed Sybase

SELECT TOP 3
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] LIKE 'J%' ESCAPE '~'
ORDER BY
	[x].[PersonID] DESC

