-- SqlServer.2005
DECLARE @baseDate DateTime
SET     @baseDate = CAST('2000-01-01T00:00:00.000' AS DATETIME)

SELECT
	[t1].[RowNumber_2],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[RowNumber] ORDER BY [e].[RowNumber_1] DESC, [e].[RowNumber_2]) as [RowNumber],
			[e].[RowNumber_1],
			[e].[RowNumber_2],
			[e].[Count_1]
		FROM
			(
				SELECT
					CASE
						WHEN [g_2].[Year_1] > 0 THEN 1
						ELSE 0
					END as [RowNumber],
					(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, @baseDate, [g_2].[Key_1]) AS BigInt) AS Int), @baseDate), [g_2].[Key_1]) AS BigInt) * 10000 as [RowNumber_1],
					[g_2].[Key_1] as [RowNumber_2],
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
	[t1].[RowNumber_1] DESC,
	[t1].[RowNumber_2]

-- SqlServer.2005
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

