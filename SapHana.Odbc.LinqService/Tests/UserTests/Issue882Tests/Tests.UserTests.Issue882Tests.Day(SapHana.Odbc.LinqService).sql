BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	MOD(DayOfMonth("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

