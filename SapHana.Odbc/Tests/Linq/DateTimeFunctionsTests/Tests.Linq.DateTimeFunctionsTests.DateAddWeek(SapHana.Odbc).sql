BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Days("t"."DateTimeValue", -7) as Date)
FROM
	"LinqDataTypes" "t"

