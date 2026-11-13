-- SqlServer.CS.MS SqlServer.2025
DECLARE @baseDate DateTime2
SET     @baseDate = DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 7)

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
					IIF([g_2].[Year_1] > 0, 1, 0) as [c1],
					DateAdd(nanosecond, CAST((((DateDiff_Big(day, @baseDate, [g_2].[Key_1]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @baseDate, [g_2].[Key_1]) AS Int), @baseDate), [g_2].[Key_1]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, @baseDate, [g_2].[Key_1]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @baseDate, [g_2].[Key_1]) AS Int), @baseDate), [g_2].[Key_1]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, @baseDate, [g_2].[Key_1]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @baseDate, [g_2].[Key_1]) AS Int), @baseDate), [g_2].[Key_1]) / 100) / 864000000000 AS Int), CAST([g_2].[Key_1] AS DateTime2)))) as [c2],
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

-- SqlServer.CS.MS SqlServer.2025
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

