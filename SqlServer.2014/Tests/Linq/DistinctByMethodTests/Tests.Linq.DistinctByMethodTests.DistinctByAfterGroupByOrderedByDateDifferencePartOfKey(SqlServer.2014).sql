-- SqlServer.2014
DECLARE @baseDate DateTime2
SET     @baseDate = DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[c1] ORDER BY [e].[TotalDays] DESC, [e].[Key_1]) as [RowNumber],
			[e].[TotalDays],
			[e].[Key_1],
			[e].[Count_1]
		FROM
			(
				SELECT
					IIF([g_2].[Year_1] > 0, 1, 0) as [c1],
					CAST((CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) AS Int), @baseDate) AS DateTime2), [g_2].[Key_1]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) AS Int), @baseDate) AS DateTime2), [g_2].[Key_1]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) AS Int), @baseDate) AS DateTime2)), [g_2].[Key_1]) AS BigInt) / 100 AS Float) / 864000000000 as [TotalDays],
					[g_2].[Key_1],
					COUNT(*) as [Count_1]
				FROM
					(
						SELECT
							[g_1].[DateTimeValue] as [Key_1],
							DatePart(year, [g_1].[DateTimeValue]) as [Year_1]
						FROM
							[LinqDataTypes] [g_1]
					) [g_2]
				GROUP BY
					[g_2].[Key_1],
					[g_2].[Year_1]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[TotalDays] DESC,
	[t1].[Key_1]

-- SqlServer.2014
SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

