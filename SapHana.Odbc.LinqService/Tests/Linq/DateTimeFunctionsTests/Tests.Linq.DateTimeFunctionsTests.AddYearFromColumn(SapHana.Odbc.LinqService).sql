BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	To_Date(Add_Years("t"."DateTimeValue", "t"."SmallIntValue"))
FROM
	"LinqDataTypes" "t"

