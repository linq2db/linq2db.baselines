BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) > 'joh' AND [p].[PersonID] = 1

