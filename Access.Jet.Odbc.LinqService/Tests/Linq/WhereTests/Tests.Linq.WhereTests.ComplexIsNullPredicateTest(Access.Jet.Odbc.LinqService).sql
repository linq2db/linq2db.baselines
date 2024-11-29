BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Person] [t1]
WHERE
	IIF([t1].[MiddleName] = '123', True, False) = IIF([t1].[MiddleName] = '1' OR [t1].[MiddleName] = 'test' AND ([t1].[MiddleName] <> '1' OR [t1].[MiddleName] IS NULL), True, False)

