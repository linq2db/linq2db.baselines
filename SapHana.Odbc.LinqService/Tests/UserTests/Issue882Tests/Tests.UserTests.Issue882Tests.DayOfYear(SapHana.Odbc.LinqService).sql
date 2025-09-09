BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MOD(DayOfYear("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

