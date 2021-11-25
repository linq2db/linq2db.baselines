BeforeExecute
-- Firebird

SELECT
	Sum("selectParam"."MoneyValue"),
	Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int),
	Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int),
	Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int)

