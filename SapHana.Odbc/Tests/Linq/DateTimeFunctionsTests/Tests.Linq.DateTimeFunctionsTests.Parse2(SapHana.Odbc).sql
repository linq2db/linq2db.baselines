-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(CAST(Year("d"."DateTimeValue") AS NVarChar(11)) || '-02-24 00:00:00' AS Timestamp)
FROM
	"LinqDataTypes" "d"
WHERE
	DayOfMonth(CAST(CAST(Year("d"."DateTimeValue") AS NVarChar(11)) || '-02-24 00:00:00' AS Timestamp)) > 0

