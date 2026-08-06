-- SQLite.MS SQLite
DECLARE @date  -- Date
SET     @date = '2020-02-29 00:00:00.000'

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue]
FROM
	[LinqDataTypes] [t1]
WHERE
	Date([t1].[DateTimeValue]) = Date(@date)
LIMIT 1

