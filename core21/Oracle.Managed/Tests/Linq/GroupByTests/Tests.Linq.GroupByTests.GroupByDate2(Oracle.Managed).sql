BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Sum(selectParam."MoneyValue"),
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY')),
	To_Number(To_Char(selectParam."DateTimeValue", 'MM'))
FROM
	"LinqDataTypes" selectParam
GROUP BY
	To_Number(To_Char(selectParam."DateTimeValue", 'MM')),
	To_Number(To_Char(selectParam."DateTimeValue", 'YYYY'))

