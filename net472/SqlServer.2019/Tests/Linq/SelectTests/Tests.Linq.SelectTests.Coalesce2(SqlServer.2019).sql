BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[p].[PersonID], 
	IIF([p].[MiddleName] IS NULL, IIF([p].[FirstName] IS NULL, N'None', [p].[FirstName]), [p].[MiddleName]), 
	IIF([p].[LastName] IS NULL, IIF([p].[FirstName] IS NULL, N'None', [p].[FirstName]), [p].[LastName]), 
	IIF([p].[MiddleName] IS NULL, IIF([p].[MiddleName] IS NULL, N'None', [p].[MiddleName]), [p].[MiddleName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

