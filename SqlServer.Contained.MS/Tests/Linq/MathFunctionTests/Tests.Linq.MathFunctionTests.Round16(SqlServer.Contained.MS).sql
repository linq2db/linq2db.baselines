-- SqlServer.Contained.MS SqlServer.2025
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, [p].[ID] % 2 + 2) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], [p].[ID] % 2 + 2), ROUND([p].[MoneyValue] / 2, [p].[ID] % 2 + 2) * 2, ROUND([p].[MoneyValue], [p].[ID] % 2 + 2))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, [p].[ID] % 2 + 1) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], [p].[ID] % 2 + 1), ROUND([p].[MoneyValue] / 2, [p].[ID] % 2 + 1) * 2, ROUND([p].[MoneyValue], [p].[ID] % 2 + 1))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- SqlServer.Contained.MS SqlServer.2025
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

