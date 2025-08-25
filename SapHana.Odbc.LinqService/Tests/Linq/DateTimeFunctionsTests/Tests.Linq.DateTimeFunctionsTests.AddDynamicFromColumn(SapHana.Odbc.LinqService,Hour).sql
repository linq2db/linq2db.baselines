BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Seconds("t"."DateTimeValue", "t"."SmallIntValue" * 3600)
FROM
	"LinqDataTypes" "t"

