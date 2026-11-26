-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	(CAST(CAST([p].[ID] AS Decimal) AS Float) / 10) / 2
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

