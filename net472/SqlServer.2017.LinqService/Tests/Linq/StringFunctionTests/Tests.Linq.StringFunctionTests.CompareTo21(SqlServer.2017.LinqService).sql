BeforeExecute
-- SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[FirstName] > N'Johnn', 1, IIF([p].[FirstName] = N'Johnn', 0, -1)) <= 0 AND
	[p].[PersonID] = 1

