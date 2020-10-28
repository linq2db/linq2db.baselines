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
-- SqlServer.2012

SELECT
	Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))
FROM
	[LinqDataTypes] [t]
WHERE
	Len(Convert(NVarChar(3), Convert(TinyInt, [t].[ID]))) > 0

