BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE 'j%' ESCAPE '~' AND ([p].[PersonID] = 1 OR [p].[LastName] = 'fail')

