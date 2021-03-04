BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Seconds("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double) * 60)
FROM
	"LinqDataTypes" "t"

