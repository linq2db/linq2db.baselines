BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Add_Years("t"."DateTimeValue", "t"."SmallIntValue") as Date)
FROM
	"LinqDataTypes" "t"

