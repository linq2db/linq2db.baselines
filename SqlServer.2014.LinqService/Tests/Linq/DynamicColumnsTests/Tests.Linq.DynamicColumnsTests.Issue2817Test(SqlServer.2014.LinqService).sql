BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[LastName] = N'ministra'
ORDER BY
	[p].[LastName]

