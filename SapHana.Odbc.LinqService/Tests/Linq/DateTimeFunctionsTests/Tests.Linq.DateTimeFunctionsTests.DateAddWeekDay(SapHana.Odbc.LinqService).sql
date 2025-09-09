BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	To_Date(Add_Days("t"."DateTimeValue", 1))
FROM
	"LinqDataTypes" "t"

