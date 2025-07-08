BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[inner_2].[Count_1]
FROM
	[LinqDataTypes] [t1]
		LEFT JOIN (
			SELECT
				[inner_1].[Count_1],
				[inner_1].[Key_1]
			FROM
				(
					SELECT
						[g_1].[GuidValue] as [Key_1],
						COUNT(IIF([g_1].[BoolValue] = 1, 1, NULL)) as [Count_1]
					FROM
						[LinqDataTypes] [g_1]
					GROUP BY
						[g_1].[GuidValue]
				) [inner_1]
		) [inner_2] ON [t1].[GuidValue] = [inner_2].[Key_1]

BeforeExecute
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

