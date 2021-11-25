BeforeExecute
-- Firebird

SELECT
	Sum("selectParam"."MoneyValue"),
	Cast(Floor(Extract(year from Cast((Cast(Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-' || Cast(Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-1') as Date))) as int),
	Cast(Floor(Extract(month from Cast((Cast(Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-' || Cast(Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-1') as Date))) as int)
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Cast((Cast(Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-' || Cast(Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-1') as Date)

