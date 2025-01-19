BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[Id],
	IIF([x].[StringProp] = '1' OR [x].[StringProp] IS NULL, True, False),
	IIF([x].[StringProp] = '2', True, False),
	[x].[StringProp],
	1,
	[x].[StringProp] + '2',
	2
FROM
	[ConditionalData] [x]
WHERE
	IIF([x].[StringProp] = '1' OR [x].[StringProp] IS NULL, '2', IIF([x].[StringProp] = '2', [x].[StringProp], [x].[StringProp] + '2')) LIKE '%2' AND
	IIF([x].[StringProp] = '1' OR [x].[StringProp] IS NULL, NULL, IIF([x].[StringProp] = '2', 1, 2)) = 2

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[StringProp]
FROM
	[ConditionalData] [t1]

