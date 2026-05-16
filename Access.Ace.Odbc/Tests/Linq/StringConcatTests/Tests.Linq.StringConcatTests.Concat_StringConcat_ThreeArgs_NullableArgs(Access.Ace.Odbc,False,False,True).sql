-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Value1] + [t].[Value2] + IIF([t].[Value3] IS NULL, '', [t].[Value3])
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

