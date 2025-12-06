-- SapHana.Odbc SapHanaOdbc

SELECT
	MOD(DayOfYear("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

