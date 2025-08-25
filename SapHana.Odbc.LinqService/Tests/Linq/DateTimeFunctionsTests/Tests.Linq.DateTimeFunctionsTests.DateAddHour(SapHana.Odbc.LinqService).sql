BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", 3600))
FROM
	"LinqDataTypes" "t"

