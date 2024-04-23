BeforeExecute
-- SQLite.MS SQLite

SELECT
	[_].[ID],
	[_].[MoneyValue],
	[_].[DateTimeValue],
	[_].[DateTimeValue2],
	[_].[BoolValue],
	[_].[GuidValue],
	[_].[SmallIntValue],
	[_].[IntValue],
	[_].[BigIntValue],
	[_].[StringValue]
FROM
	[LinqDataTypes] [_]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Date([_].[DateTimeValue])) = strftime('%Y-%m-%d %H:%M:%f', Date(strftime('%Y-%m-%d %H:%M:%f', '2009-09-20 00:00:00.000')))

