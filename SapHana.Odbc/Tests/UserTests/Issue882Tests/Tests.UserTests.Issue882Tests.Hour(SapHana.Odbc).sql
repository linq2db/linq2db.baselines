-- SapHana.Odbc SapHanaOdbc

SELECT
	MOD(Hour("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

