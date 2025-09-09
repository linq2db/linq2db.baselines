BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[ID],
	COUNT(*),
	SUM(DateDiff_Big(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))),
	MAX(DateDiff_Big(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue])))
FROM
	[LinqDataTypes] [g_1]
GROUP BY
	[g_1].[ID]

