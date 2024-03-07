BeforeExecute
-- Access AccessOleDb

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Person] [_]
WHERE
	IIF([_].[MiddleName] = '123', True, False) = IIF(IIF([_].[MiddleName] = '1', 'test', [_].[MiddleName]) = 'test', True, False)

