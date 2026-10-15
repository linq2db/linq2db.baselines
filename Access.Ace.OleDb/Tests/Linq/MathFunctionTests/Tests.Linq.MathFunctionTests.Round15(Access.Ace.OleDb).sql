-- Access.Ace.OleDb AccessOleDb
SELECT
	IIF([p].[MoneyValue] * 100000 - Int([p].[MoneyValue] * 100000) = 0.5 AND Int([p].[MoneyValue] * 100000) MOD 2 = 0, -Int(-([p].[MoneyValue] * 100000)), Round([p].[MoneyValue] * 100000, 0)) / 100000 + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
SELECT
	Round([p].[MoneyValue], 5) + [p].[MoneyValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[MoneyValue] <> 0
ORDER BY
	[p].[ID]

-- Access.Ace.OleDb AccessOleDb
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

