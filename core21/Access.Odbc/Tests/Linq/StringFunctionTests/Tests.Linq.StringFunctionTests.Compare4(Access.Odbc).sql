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
	LCase(Mid([p].[FirstName], 2, 2)) = 'oh' AND [p].[PersonID] = 1

