BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	Len([p].[FirstName]) = 0
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

