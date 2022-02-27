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
	[p].[PersonID] = 1 AND IIF([p].[MiddleName] IS NULL, N'None', [p].[MiddleName]) = N'None' AND
	IIF([p].[FirstName] IS NULL, N'None', [p].[FirstName]) = N'John'

