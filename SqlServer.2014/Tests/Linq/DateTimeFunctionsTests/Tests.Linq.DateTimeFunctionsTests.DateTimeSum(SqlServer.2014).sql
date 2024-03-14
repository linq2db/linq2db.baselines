BeforeExecute
-- SqlServer.2014

SELECT
	[g_1].[ID],
	Count(*),
	Sum(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))),
	Max(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue])))
FROM
	[LinqDataTypes] [g_1]
GROUP BY
	[g_1].[ID]

