BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Person] [t1]
WHERE
	NOT ([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL)

