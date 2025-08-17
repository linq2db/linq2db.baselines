BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[inner_1].[Count_1]
FROM
	[LinqDataTypes] [t1]
		LEFT JOIN (
			SELECT
				[g_1].[GuidValue] as [Key_1],
				COUNT(IIF([g_1].[BoolValue] = 1, 1, NULL)) as [Count_1]
			FROM
				[LinqDataTypes] [g_1]
			GROUP BY
				[g_1].[GuidValue]
		) [inner_1] ON [t1].[GuidValue] = [inner_1].[Key_1]

BeforeExecute
-- SqlServer.2019 (asynchronously)

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

