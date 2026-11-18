-- Access.Ace.Odbc AccessODBC
SELECT DISTINCT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[t].[ID],
			IIF([t].[ID] > 8, NULL, [t].[BoolValue]) as [Value_1]
		FROM
			[LinqDataTypes] [t]
	) [t1]
ORDER BY
	([t1].[Value_1]),
	[t1].[ID]

