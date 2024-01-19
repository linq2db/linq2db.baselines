BeforeExecute
-- SQLite.MS SQLite

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
	[t].[BoolValue] = 0 AND (Cast([t].[SmallIntValue] as INTEGER) = 5 OR Cast([t].[SmallIntValue] as INTEGER) = 7 OR (Cast([t].[SmallIntValue] as INTEGER) | 2) = 10)

