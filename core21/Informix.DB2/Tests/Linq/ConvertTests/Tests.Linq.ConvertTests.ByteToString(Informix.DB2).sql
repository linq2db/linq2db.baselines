BeforeExecute
-- SQLite.Default SQLite.MS SQLite

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
-- Informix.DB2 Informix

SELECT
	To_Char(Cast(t.ID as SmallInt))
FROM
	LinqDataTypes t
WHERE
	Length(To_Char(Cast(t.ID as SmallInt))) > 0

