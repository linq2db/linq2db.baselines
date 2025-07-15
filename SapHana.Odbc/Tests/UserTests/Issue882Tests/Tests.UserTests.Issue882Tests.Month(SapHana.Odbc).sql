BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	MOD(Month("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

