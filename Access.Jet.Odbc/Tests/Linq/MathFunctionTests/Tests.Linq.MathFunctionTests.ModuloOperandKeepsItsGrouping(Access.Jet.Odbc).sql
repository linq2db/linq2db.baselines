-- Access.Jet.Odbc AccessODBC
SELECT
	([p].[ID] + 5) MOD 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	(100 - [p].[ID]) MOD 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	100 - [p].[ID] MOD 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	([p].[ID] + 20) MOD (([p].[ID] * 5 + 3) MOD 5)
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	([p].[ID] + 20) MOD ([p].[ID] * 3)
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[ID] > 0
ORDER BY
	[p].[ID]

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	([p].[ID] MOD 3) ^ 2
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC
SELECT
	2 ^ ([p].[ID] MOD 3)
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- Access.Jet.Odbc AccessODBC
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

