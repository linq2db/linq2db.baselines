-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

