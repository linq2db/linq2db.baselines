BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[g_1].[ID] as [Key_1],
	COUNT(*) as [COUNT_1],
	SUM(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [Value_1],
	MAX(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [MAX_1]
FROM
	[LinqDataTypes] [g_1]
GROUP BY
	[g_1].[ID]

