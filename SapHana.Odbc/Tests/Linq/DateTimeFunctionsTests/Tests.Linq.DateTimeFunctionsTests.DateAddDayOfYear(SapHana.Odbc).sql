BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Days("t"."DateTimeValue", 3) as Date)
FROM
	"LinqDataTypes" "t"

