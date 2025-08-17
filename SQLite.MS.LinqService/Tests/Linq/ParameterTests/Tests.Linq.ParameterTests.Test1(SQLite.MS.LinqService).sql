BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @dt  -- DateTime
SET     @dt = '2020-02-29 17:54:55.123'

SELECT
	[t].[ID],
	[t].[MoneyValue],
	[t].[DateTimeValue],
	[t].[BoolValue],
	[t].[GuidValue],
	[t].[BinaryValue],
	[t].[SmallIntValue],
	[t].[StringValue]
FROM
	[LinqDataTypes] [t]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue]) = strftime('%Y-%m-%d %H:%M:%f', @dt)

