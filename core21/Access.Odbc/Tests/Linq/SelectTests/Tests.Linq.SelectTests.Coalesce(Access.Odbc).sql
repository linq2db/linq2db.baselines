BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[PersonID], 
	Iif([p].[FirstName] IS NULL, 'None', [p].[FirstName]), 
	Iif([p].[MiddleName] IS NULL, 'None', [p].[MiddleName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

