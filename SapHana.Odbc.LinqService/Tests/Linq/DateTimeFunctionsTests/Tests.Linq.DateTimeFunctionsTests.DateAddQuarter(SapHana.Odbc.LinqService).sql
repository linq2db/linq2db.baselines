BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	To_Date(Add_Months("t"."DateTimeValue", -3))
FROM
	"LinqDataTypes" "t"

