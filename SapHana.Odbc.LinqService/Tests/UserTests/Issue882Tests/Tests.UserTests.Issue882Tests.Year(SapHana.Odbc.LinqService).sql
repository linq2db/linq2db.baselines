BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MOD(Year("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

