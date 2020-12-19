BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*) > 0
FROM
	[Person] [_]
WHERE
	Iif([_].[MiddleName] = '123', True, False) = (Iif([_].[MiddleName] = '1', 'test', [_].[MiddleName]) = 'test')

