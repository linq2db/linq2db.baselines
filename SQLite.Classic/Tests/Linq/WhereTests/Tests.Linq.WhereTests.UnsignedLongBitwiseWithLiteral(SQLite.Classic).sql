-- SQLite.Classic SQLite
SELECT
	CAST([p].[ID] AS Decimal) & 6
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT
	CAST([p].[ID] AS Decimal) | 6
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT
	(CAST([p].[ID] AS Decimal) + 6) - (CAST([p].[ID] AS Decimal) & 6) * 2
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- SQLite.Classic SQLite
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

