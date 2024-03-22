BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Days("t"."DateTimeValue", 5) as Date)
FROM
	"LinqDataTypes" "t"

