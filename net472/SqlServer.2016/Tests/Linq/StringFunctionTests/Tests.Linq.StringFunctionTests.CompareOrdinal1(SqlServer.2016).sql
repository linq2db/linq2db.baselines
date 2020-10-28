BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF([p].[FirstName] > N'Joh', 1, IIF([p].[FirstName] = N'Joh', 0, -1)) > 0 AND
	[p].[PersonID] = 1

