BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	To_Date(Add_Months("t"."DateTimeValue", -2))
FROM
	"LinqDataTypes" "t"

