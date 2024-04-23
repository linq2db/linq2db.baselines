BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Person] [_]
WHERE
	IIF([_].[MiddleName] = '123', True, False) = IIF(([_].[MiddleName] = '1' OR [_].[MiddleName] = 'test' AND ([_].[MiddleName] <> '1' OR [_].[MiddleName] IS NULL)), True, False)

