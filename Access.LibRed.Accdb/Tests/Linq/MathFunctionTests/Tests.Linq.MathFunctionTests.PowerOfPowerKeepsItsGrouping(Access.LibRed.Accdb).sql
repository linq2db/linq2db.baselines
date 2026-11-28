-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	2 ^ (([p].[ID] MOD 3 + 1) ^ 2)
FROM
	[LinqDataTypes] [p]
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
	([p].[ID] MOD 3 + 1) ^ 2 ^ 3
FROM
	[LinqDataTypes] [p]
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
	CDec(2 ^ CDec(([p].[ID] MOD 3 + 1) ^ 2))
FROM
	[LinqDataTypes] [p]
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
	2 ^ (([p].[Value1] MOD 3 + 1) ^ 2)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NOT NULL
ORDER BY
	[p].[ParentID]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

