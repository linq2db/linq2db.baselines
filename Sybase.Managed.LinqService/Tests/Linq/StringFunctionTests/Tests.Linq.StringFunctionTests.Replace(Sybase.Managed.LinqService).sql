BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Str_Replace([p].[FirstName], 'hn', 'lie') = 'Jolie' AND
	[p].[PersonID] = 1

