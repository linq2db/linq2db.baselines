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
	[p].[PersonID] = 1 AND IIF([p].[MiddleName] IS NOT NULL, 3, IIF([p].[MiddleName] IS NULL, 1, 2)) = 1 AND
	IIF([p].[FirstName] IS NULL, 3, IIF([p].[FirstName] IS NOT NULL, 1, 2)) = 1

