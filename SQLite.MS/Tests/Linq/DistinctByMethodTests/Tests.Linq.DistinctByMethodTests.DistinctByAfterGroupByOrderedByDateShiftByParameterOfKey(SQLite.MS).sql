-- SQLite.MS SQLite
DECLARE @p Integer -- Int32
SET     @p = -6

SELECT
	[t1].[Key_1],
	[t1].[Count_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Year_1] ORDER BY [e].[c1] DESC) as [RowNumber],
			[e].[c1],
			[e].[Key_1],
			[e].[Count_1]
		FROM
			(
				SELECT
					[g_2].[Year_1],
					strftime('%Y-%m-%d %H:%M:%f', [g_2].[Key_1], CAST(@p AS NVarChar(11)) || ' Hour') as [c1],
					[g_2].[Key_1],
					COUNT(*) as [Count_1]
				FROM
					(
						SELECT
							[g_1].[DateTimeValue] as [Key_1],
							CAST(strftime('%Y', [g_1].[DateTimeValue]) AS INTEGER) as [Year_1]
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
	[t1].[c1] DESC

-- SQLite.MS SQLite
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

