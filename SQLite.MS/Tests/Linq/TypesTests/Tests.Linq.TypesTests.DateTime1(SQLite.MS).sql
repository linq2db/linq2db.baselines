-- SQLite.MS SQLite
DECLARE @Date  -- DateTime
SET     @Date = '2009-09-20 00:00:00.000'

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
	strftime('%Y-%m-%d %H:%M:%f', Date([t].[DateTimeValue])) > strftime('%Y-%m-%d %H:%M:%f', @Date)

