-- SQLite.Classic.MPU SQLite.Classic SQLite

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
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t1].[DateTimeValue]) = strftime('%Y-%m-%d %H:%M:%f', '2009-09-27 00:00:00.000')

