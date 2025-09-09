BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[inner_1].[Count_1]
FROM
	[LinqDataTypes] [t1]
		LEFT JOIN (
			SELECT
				[g_1].[GuidValue] as [Key_1],
				COUNT(CASE
					WHEN [g_1].[BoolValue] THEN 1
					ELSE NULL
				END) as [Count_1]
			FROM
				[LinqDataTypes] [g_1]
			GROUP BY
				[g_1].[GuidValue]
		) [inner_1] ON [t1].[GuidValue] = [inner_1].[Key_1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

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

