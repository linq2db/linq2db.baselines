BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	DayOfMonth("t"."DateTimeValue") > 0

