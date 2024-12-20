BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')

