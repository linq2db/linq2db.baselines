BeforeExecute
-- SqlCe

SELECT
	[g_1].[ID],
	Count(*) as [Count_1],
	Sum(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [Sum_1],
	Max(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [Max_1]
FROM
	[LinqDataTypes] [g_1]
GROUP BY
	[g_1].[ID]

