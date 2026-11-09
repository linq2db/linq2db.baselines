-- SqlServer.2008
DECLARE @baseDate DateTime2
SET     @baseDate = CAST('2000-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[c1] ORDER BY [e].[c2] DESC, [e].[Key_1]) as [RowNumber],
			[e].[c2],
			[e].[Key_1],
			[e].[Count_1]
		FROM
			(
				SELECT
					CASE
						WHEN [g_2].[Year_1] > 0 THEN 1
						ELSE 0
					END as [c1],
					(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) AS Int), @baseDate) AS DateTime2), [g_2].[Key_1]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) AS Int), @baseDate) AS DateTime2), [g_2].[Key_1]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) AS Int), @baseDate) AS DateTime2)), [g_2].[Key_1]) AS BigInt) / 100 as [c2],
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
	[t1].[c2] DESC,
	[t1].[Key_1]

-- SqlServer.2008
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

