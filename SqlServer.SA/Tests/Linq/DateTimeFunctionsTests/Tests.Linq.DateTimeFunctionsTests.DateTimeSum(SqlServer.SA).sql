BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Key_1],
	[t1].[COUNT_1],
	[t1].[SUM_1],
	IIF([t1].[SUM_1] IS NOT NULL, 1, 0),
	[t1].[MAX_1]
FROM
	(
		SELECT
			[g_1].[ID] as [Key_1],
			COUNT(*) as [COUNT_1],
			SUM(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [SUM_1],
			MAX(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [MAX_1]
		FROM
			[LinqDataTypes] [g_1]
		GROUP BY
			[g_1].[ID]
	) [t1]

