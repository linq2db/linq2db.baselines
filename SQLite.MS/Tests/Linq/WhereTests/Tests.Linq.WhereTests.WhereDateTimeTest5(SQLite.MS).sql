BeforeExecute
-- SQLite.MS SQLite

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
	strftime('%Y-%m-%d %H:%M:%f', Date([t1].[DateTimeValue])) = strftime('%Y-%m-%d %H:%M:%f', Date(strftime('%Y-%m-%d %H:%M:%f', '2009-09-20 00:00:00.000')))

