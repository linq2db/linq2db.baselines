-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Value1] + IIF([t].[Value2] IS NULL, '', [t].[Value2])
FROM
	[StringConcatNullEntity] [t]
ORDER BY
	[t].[ID]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2]
FROM
	[StringConcatNullEntity] [t1]

