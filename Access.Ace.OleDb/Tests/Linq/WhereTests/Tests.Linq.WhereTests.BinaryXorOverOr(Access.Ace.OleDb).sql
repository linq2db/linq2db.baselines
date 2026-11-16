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
	(([p].[PersonID] BXOR 1) BOR 2) = 3

