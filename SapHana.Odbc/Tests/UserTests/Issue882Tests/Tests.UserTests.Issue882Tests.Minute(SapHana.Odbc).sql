-- SapHana.Odbc SapHanaOdbc

SELECT
	MOD(Minute("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

