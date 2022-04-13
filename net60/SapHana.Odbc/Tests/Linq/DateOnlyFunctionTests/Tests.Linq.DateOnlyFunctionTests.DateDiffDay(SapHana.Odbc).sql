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
-- SapHana.Odbc SapHanaOdbc

SELECT
	Days_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 360000))
FROM
	"LinqDataTypes" "t"

