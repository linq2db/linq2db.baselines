BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[BinaryValue],
	[_].[SmallIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Date([_].[DateTimeValue])) = strftime('%Y-%m-%d %H:%M:%f', Date(strftime('%Y-%m-%d %H:%M:%f', '2009-09-20 00:00:00.000')))

