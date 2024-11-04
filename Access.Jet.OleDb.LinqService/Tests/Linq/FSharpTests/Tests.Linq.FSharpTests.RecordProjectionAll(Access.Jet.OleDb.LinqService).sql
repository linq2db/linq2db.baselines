BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

