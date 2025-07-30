BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[FirstName],
	COUNT(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]

