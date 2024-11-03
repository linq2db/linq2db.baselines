BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Person] [t1]
WHERE
	[t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL

