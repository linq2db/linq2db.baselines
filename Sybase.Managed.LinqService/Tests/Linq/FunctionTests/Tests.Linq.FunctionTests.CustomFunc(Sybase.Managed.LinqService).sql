BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[LastName] + ', ' + [p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + ', ' + [p].[FirstName] = 'Pupkin, John'

