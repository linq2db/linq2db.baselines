BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*) > 0
FROM
	[Person] [t1]
WHERE
	(1 = 1) <> IIF([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL, True, False)

