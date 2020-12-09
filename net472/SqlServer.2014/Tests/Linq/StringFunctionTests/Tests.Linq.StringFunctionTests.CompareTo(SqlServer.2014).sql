BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[FirstName] > N'John', 1, IIF([p].[FirstName] = N'John', 0, -1)) = 0 AND
	[p].[PersonID] = 1

