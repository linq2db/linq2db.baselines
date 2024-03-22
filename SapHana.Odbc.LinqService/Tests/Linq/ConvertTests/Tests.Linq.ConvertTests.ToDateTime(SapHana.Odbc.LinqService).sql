BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Year("p"."DateTimeValue") || '-01-01 00:00:00'
FROM
	"LinqDataTypes" "p"
WHERE
	DayOfMonth(Cast((Year("p"."DateTimeValue") || '-01-01 00:00:00') as Timestamp)) > 0

