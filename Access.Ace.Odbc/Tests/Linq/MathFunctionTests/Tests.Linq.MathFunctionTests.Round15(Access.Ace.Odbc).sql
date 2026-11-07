-- Access.Ace.Odbc AccessODBC
SELECT
	Sgn([p].[MoneyValue]) * (Int(Abs([p].[MoneyValue]) * (10 ^ 5) + 0.5) / (10 ^ 5)) + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
SELECT
	Round([p].[MoneyValue], 5) + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- Access.Ace.Odbc AccessODBC
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

