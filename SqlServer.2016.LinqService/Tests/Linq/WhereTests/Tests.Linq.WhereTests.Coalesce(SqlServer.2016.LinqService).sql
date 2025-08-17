BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Coalesce([p].[MiddleName], N'None') = N'None' AND
	[p].[FirstName] = N'John'

