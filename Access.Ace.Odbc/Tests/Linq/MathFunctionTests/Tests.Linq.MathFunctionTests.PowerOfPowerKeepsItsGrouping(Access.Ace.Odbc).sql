-- Access.Ace.Odbc AccessODBC
SELECT
	2 ^ (([p].[ID] MOD 3 + 1) ^ 2)
FROM
	[LinqDataTypes] [p]
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
	([p].[ID] MOD 3 + 1) ^ 2 ^ 3
FROM
	[LinqDataTypes] [p]
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
	2 ^ (([p].[ID] MOD 3 + 1) ^ 2)
FROM
	[LinqDataTypes] [p]
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
	2 ^ (([p].[Value1] MOD 3 + 1) ^ 2)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NOT NULL
ORDER BY
	[p].[ParentID]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

