BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Year("d"."DateTimeValue") || '-02-24 00:00:00') as Timestamp)
FROM
	"LinqDataTypes" "d"
WHERE
	DayOfMonth(Cast((Year("d"."DateTimeValue") || '-02-24 00:00:00') as Timestamp)) > 0

