-- Access.Ace.Odbc AccessODBC

SELECT
	IIF([t].[Value1] IS NULL, '', [t].[Value1]) + [t].[Value2]
FROM
	[StringConcatNullEntity] [t]
ORDER BY
	[t].[ID]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2]
FROM
	[StringConcatNullEntity] [t1]

