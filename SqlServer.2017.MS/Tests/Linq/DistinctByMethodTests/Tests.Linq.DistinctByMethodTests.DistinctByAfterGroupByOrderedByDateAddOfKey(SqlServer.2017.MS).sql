-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[RowNumber] ORDER BY [e].[RowNumber_1] DESC) as [RowNumber],
			[e].[RowNumber_1],
			[e].[Key_1],
			[e].[Count_1]
		FROM
			(
				SELECT
					[g_2].[Year_1] as [RowNumber],
					DateAdd(day, 1, [g_2].[Key_1]) as [RowNumber_1],
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
	[t1].[RowNumber_1] DESC

-- SqlServer.2017.MS SqlServer.2017
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

