BeforeExecute
-- SQLite.MS SQLite

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Sum(t1."MoneyValue"),
	t1."Key_2",
	t1."Key_1"
FROM
	(
		SELECT
			Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as "Key_1",
			Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as "Key_2",
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) t1
GROUP BY
	t1."Key_1",
	t1."Key_2"

