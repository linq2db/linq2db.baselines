BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Days("t"."DateTimeValue", 1) as Date)
FROM
	"LinqDataTypes" "t"

