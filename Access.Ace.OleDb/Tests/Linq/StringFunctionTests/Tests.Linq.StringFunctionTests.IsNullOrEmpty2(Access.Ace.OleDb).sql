-- Access.Ace.OleDb AccessOleDb

SELECT
	Len([p].[FirstName]) = 0
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

