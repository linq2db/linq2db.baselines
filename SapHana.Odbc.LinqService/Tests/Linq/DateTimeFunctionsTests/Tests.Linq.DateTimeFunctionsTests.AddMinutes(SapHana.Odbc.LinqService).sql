BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", -480))
FROM
	"LinqDataTypes" "t"

