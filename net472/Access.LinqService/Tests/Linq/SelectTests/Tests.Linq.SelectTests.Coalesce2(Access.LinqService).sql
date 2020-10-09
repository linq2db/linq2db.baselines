BeforeExecute
-- Access AccessOleDb

SELECT 
	[p].[PersonID], 
	Iif([p].[MiddleName] IS NULL, Iif([p].[FirstName] IS NULL, 'None', [p].[FirstName]), [p].[MiddleName]), 
	Iif([p].[LastName] IS NULL, Iif([p].[FirstName] IS NULL, 'None', [p].[FirstName]), [p].[LastName]), 
	Iif([p].[MiddleName] IS NULL, Iif([p].[MiddleName] IS NULL, 'None', [p].[MiddleName]), [p].[MiddleName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

