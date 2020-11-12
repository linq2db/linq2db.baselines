BeforeExecute
-- SQLite.MS SQLite

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
	To_Char(Cast(p.ID as SmallInt))
FROM
	LinqDataTypes p
WHERE
	Length(To_Char(Cast(p.ID as SmallInt))) > 0

