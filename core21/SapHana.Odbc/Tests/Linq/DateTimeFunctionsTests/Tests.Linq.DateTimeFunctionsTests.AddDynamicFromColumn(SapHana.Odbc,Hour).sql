BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Seconds("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double) * 3600)
FROM
	"LinqDataTypes" "t"

