BeforeExecute
-- SQLite.Classic SQLite
DECLARE @date  -- Date
SET     @date = '2020-02-29'

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
	DateTime(Date([t1].[DateTimeValue])) = DateTime(@date)
LIMIT 1

