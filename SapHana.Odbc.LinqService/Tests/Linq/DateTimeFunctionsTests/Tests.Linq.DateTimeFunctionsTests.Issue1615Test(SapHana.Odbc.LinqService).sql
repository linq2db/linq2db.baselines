BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	To_Date(Add_Days("t"."DateTimeValue", 5))
FROM
	"LinqDataTypes" "t"

