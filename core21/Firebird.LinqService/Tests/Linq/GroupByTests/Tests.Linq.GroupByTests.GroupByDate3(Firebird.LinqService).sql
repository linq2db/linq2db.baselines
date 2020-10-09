BeforeExecute
-- Firebird

SELECT 
	Sum("t1"."MoneyValue"), 
	Cast(Floor(Extract(year from "t1"."Key_1")) as int), 
	Cast(Floor(Extract(month from "t1"."Key_1")) as int)
FROM
	( 
		SELECT 
			Cast((Cast(Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-' || Cast(Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as VarChar(11)) || '-1') as Date) as "Key_1", 
			"selectParam"."MoneyValue"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

