BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Year("d"."DateTimeValue") || '-02-24 00:00:00' AS Timestamp)
FROM
	"LinqDataTypes" "d"
WHERE
	DayOfMonth(CAST(Year("d"."DateTimeValue") || '-02-24 00:00:00' AS Timestamp)) > 0

