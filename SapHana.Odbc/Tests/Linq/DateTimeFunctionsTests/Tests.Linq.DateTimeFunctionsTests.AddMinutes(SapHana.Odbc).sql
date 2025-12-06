-- SapHana.Odbc SapHanaOdbc

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", -480))
FROM
	"LinqDataTypes" "t"

