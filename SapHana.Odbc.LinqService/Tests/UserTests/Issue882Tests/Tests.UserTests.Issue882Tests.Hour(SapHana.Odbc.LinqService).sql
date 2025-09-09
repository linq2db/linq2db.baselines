BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MOD(Hour("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

