-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*) > 0
FROM
	[Person] [t1]
WHERE
	[t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL

