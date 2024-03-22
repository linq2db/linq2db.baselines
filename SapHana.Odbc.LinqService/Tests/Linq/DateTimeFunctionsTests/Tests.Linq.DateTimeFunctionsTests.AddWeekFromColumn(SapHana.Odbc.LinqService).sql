BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Days("t"."DateTimeValue", "t"."SmallIntValue" * 7) as Date)
FROM
	"LinqDataTypes" "t"

