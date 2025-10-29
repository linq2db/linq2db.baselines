-- SapHana.Odbc SapHanaOdbc

SELECT
	MOD(Second("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

