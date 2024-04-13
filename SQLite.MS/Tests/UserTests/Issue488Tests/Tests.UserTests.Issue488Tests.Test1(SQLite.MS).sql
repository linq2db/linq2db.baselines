BeforeExecute
-- SQLite.MS SQLite
DECLARE @date  -- Date
SET     @date = '2020-02-29 00:00:00.000'

SELECT
	[t2].[ID],
	[t2].[MoneyValue],
	[t2].[DateTimeValue],
	[t2].[BoolValue],
	[t2].[GuidValue],
	[t2].[BinaryValue],
	[t2].[SmallIntValue]
FROM
	[LinqDataTypes] [t1]
		INNER JOIN [LinqDataTypes] [t2] ON [t1].[ID] = [t2].[ID]
WHERE
	Date([t2].[DateTimeValue]) = Date(@date)
LIMIT 1

