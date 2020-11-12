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
-- Oracle.Managed Oracle12

SELECT
	Cast(Cast(p.ID as Number(3)) as VarChar2(3))
FROM
	LinqDataTypes p
WHERE
	Length(Cast(Cast(p.ID as Number(3)) as VarChar2(3))) > 0

