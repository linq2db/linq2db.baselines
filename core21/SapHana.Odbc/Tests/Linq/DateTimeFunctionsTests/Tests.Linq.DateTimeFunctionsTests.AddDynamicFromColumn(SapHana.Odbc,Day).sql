BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Days("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double))
FROM
	"LinqDataTypes" "t"

