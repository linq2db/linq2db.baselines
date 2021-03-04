BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Days("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double) * 7)
FROM
	"LinqDataTypes" "t"

