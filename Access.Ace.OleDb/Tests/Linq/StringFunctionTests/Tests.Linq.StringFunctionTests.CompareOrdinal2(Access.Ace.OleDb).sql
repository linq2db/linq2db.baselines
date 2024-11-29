BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Mid([p].[FirstName], 2, 2) = Mid('Joh', 2, 2) AND [p].[PersonID] = 1

