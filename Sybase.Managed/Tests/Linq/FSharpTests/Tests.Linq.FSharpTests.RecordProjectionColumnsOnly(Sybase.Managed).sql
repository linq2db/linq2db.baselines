-- Sybase.Managed Sybase

SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	'ибн Алёша'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

