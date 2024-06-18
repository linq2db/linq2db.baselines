BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_2].[ID],
	[g_2].[COUNT_1],
	[g_2].[SUM_1],
	CASE
		WHEN [g_2].[SUM_1] IS NOT NULL THEN CASE
			WHEN [g_2].[SUM_1] IS NOT NULL THEN 1
			ELSE 0
		END
		ELSE 0
	END,
	[g_2].[MAX_1]
FROM
	(
		SELECT
			[g_1].[ID],
			COUNT(*) as [COUNT_1],
			SUM(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [SUM_1],
			MAX(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))) as [MAX_1]
		FROM
			[LinqDataTypes] [g_1]
		GROUP BY
			[g_1].[ID]
	) [g_2]

