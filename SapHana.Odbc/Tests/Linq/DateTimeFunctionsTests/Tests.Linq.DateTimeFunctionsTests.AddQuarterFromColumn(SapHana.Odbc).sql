-- SapHana.Odbc SapHanaOdbc

SELECT
	To_Date(Add_Months("t"."DateTimeValue", "t"."SmallIntValue" * 3))
FROM
	"LinqDataTypes" "t"

