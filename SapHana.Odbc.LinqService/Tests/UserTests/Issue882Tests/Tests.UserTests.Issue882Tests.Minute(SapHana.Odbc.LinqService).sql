BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MOD(Minute("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

