-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Date(Add_Years("t"."DateTimeValue", "t"."SmallIntValue"))
FROM
	"LinqDataTypes" "t"

