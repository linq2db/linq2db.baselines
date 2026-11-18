-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_1].[ID],
	COUNT(*),
	SUM(DATEDIFF('ms', [g_1].[DateTimeValue], DateAdd('d', 1, [g_1].[DateTimeValue]))),
	MAX(DATEDIFF('ms', [g_1].[DateTimeValue], DateAdd('d', 1, [g_1].[DateTimeValue])))
FROM
	[LinqDataTypes] [g_1]
GROUP BY
	[g_1].[ID]

