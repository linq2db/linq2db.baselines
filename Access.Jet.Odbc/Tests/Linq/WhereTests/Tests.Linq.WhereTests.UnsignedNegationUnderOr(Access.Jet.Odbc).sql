-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[ID] BOR -1 - ([p].[ID] + 4)
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

