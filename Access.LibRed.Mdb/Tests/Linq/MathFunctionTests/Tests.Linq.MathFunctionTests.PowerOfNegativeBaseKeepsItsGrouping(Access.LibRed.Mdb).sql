-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	-2 ^ ([p].[ID] MOD 3 + 1)
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

