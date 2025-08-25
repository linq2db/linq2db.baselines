BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Seconds("t"."DateTimeValue", "t"."SmallIntValue" * 60)
FROM
	"LinqDataTypes" "t"

