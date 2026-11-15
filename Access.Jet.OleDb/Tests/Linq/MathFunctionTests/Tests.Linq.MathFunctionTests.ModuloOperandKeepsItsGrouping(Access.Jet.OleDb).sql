-- Access.Jet.OleDb AccessOleDb
SELECT
	([p].[ID] + 5) MOD 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb
SELECT
	(100 - [p].[ID]) MOD 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.OleDb AccessOleDb
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

