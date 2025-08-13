BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	MOD(Year("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

