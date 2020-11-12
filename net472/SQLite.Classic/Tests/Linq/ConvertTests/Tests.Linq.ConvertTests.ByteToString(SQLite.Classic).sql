BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Cast(Cast([p].[ID] as TinyInt) as NVarChar(3))
FROM
	[LinqDataTypes] [p]
WHERE
	Length(Cast(Cast([p].[ID] as TinyInt) as NVarChar(3))) > 0

