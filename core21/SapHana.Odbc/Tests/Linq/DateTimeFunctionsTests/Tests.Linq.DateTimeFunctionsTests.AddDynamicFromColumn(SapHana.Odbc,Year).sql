BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Years("t"."DateTimeValue", Cast("t"."SmallIntValue" as Double))
FROM
	"LinqDataTypes" "t"

