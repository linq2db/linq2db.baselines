-- Access.Jet.Odbc AccessODBC
SELECT
	[g_1].[BoolValue],
	COUNT(*)
FROM
	[LinqDataTypes] [g_1]
GROUP BY
	[g_1].[BoolValue]
ORDER BY
	([g_1].[BoolValue]) DESC

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

