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
-- Firebird4 Firebird

SELECT
	Sum("selectParam"."MoneyValue"),
	Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int),
	Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int),
	Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int)

