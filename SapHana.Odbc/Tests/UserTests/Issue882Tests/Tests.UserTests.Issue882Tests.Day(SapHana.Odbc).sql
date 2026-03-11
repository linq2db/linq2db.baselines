-- SapHana.Odbc SapHanaOdbc

SELECT
	MOD(DayOfMonth("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

