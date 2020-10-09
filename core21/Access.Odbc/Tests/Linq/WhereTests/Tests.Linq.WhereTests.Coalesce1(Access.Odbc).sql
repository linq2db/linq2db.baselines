BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Iif([p].[MiddleName] IS NULL, 'None', [p].[MiddleName]) = 'None' AND
	Iif([p].[FirstName] IS NULL, 'None', [p].[FirstName]) = 'John'

