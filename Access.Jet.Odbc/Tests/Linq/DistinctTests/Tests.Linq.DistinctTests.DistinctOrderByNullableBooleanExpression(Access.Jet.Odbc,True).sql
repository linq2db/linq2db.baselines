-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT DISTINCT
			IIF([t].[ID] > 8, NULL, [t].[BoolValue]) as [Value_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t1]
ORDER BY
	-[t1].[Value_1] DESC,
	[t1].[ID]

