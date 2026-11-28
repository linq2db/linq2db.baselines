-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	Sgn([p].[MoneyValue]) * ((Int(Abs([p].[MoneyValue]) * CDec(10 ^ 5)) + Int((Abs([p].[MoneyValue]) * CDec(10 ^ 5) - Int(Abs([p].[MoneyValue]) * CDec(10 ^ 5))) * 2)) / CDec(10 ^ 5)) + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	Round([p].[MoneyValue], 5) + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

