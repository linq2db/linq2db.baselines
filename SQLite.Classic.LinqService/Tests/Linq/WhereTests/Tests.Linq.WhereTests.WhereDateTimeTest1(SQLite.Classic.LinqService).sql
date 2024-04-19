BeforeExecute
-- SQLite.Classic SQLite

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
	strftime('%Y-%m-%d %H:%M:%f', [_].[DateTimeValue]) > strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', '2009-01-01 00:00:00.000'))

