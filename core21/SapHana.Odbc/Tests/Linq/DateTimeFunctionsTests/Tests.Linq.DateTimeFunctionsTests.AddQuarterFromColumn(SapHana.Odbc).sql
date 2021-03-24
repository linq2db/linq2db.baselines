BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Months("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double) * 3)
FROM
	"LinqDataTypes" "t"

