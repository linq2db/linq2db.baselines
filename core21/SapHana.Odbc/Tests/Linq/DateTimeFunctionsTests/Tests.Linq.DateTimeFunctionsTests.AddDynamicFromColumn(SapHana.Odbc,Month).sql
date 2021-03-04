BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Months("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double))
FROM
	"LinqDataTypes" "t"

