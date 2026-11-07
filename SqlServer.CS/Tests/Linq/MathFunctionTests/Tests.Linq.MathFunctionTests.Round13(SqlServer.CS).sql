-- SqlServer.CS SqlServer.2025
SELECT
	IIF([p].[MoneyValue] * 2 = ROUND([p].[MoneyValue] * 2, 5) AND [p].[MoneyValue] <> ROUND([p].[MoneyValue], 5), ROUND([p].[MoneyValue] / 2, 5) * 2, ROUND([p].[MoneyValue], 5))
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- SqlServer.CS SqlServer.2025
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

