BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast("d"."DateTimeValue" as Date)
FROM
	"LinqDataTypes" "d"
WHERE
	DayOfMonth("d"."DateTimeValue") > 0

