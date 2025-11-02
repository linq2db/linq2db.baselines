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
	UCase([p].[FirstName]) = 'JOHN' AND [p].[PersonID] = 1

