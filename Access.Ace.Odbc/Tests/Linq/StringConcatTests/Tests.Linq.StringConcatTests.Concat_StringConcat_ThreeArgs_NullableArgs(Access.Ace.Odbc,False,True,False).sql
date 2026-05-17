-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Value1] + IIF([t].[Value2] IS NULL, '', [t].[Value2]) + [t].[Value3]
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

