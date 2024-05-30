BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Year("p"."DateTimeValue") || '-01-01 00:00:00' AS Timestamp)
FROM
	"LinqDataTypes" "p"
WHERE
	DayOfMonth(CAST(Year("p"."DateTimeValue") || '-01-01 00:00:00' AS Timestamp)) > 0

