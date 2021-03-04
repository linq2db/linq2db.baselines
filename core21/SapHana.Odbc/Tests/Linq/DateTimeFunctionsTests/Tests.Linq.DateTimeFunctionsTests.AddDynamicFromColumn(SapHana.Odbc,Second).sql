BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Seconds("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double))
FROM
	"LinqDataTypes" "t"

