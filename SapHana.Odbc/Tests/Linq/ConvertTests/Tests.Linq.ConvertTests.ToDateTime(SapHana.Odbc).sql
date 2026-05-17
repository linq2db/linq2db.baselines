-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(CAST(Year("p"."DateTimeValue") AS NVarChar(11)) || '-01-01 00:00:00' AS Timestamp)
FROM
	"LinqDataTypes" "p"
WHERE
	DayOfMonth(CAST(CAST(Year("p"."DateTimeValue") AS NVarChar(11)) || '-01-01 00:00:00' AS Timestamp)) > 0

