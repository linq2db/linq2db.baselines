BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", 300))
FROM
	"LinqDataTypes" "t"

