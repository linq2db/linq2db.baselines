BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MOD(Second("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

