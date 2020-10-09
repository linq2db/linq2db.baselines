BeforeExecute
-- Access AccessOleDb

SELECT TOP 1 
	[_].[PersonID], 
	[_].[Gender], 
	[_].[FirstName], 
	[_].[MiddleName], 
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1

