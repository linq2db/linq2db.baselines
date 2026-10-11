-- SQLite.Classic SQLite
SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[DateTimeValue2],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[SmallIntValue],
	[t].[IntValue],
	[t].[BigIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) IN (strftime('%Y-%m-%d %H:%M:%f', '2001-01-11 01:11:21.100'), strftime('%Y-%m-%d %H:%M:%f', '2012-11-07 19:19:29.090'))

