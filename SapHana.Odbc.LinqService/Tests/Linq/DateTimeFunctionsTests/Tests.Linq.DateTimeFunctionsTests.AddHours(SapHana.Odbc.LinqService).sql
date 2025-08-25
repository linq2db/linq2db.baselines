BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", 79200))
FROM
	"LinqDataTypes" "t"

