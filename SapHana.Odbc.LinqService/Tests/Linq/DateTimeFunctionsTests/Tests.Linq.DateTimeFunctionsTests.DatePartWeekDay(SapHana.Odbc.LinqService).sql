BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Mod(Weekday("t"."DateTimeValue") + 1, 7) + 1
FROM
	"LinqDataTypes" "t"

