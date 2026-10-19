-- SapHana.Odbc SapHanaOdbc
SELECT
	To_Date(CAST(CAST("d"."DateTimeValue" AS NVarChar(27)) AS Timestamp))
FROM
	"LinqDataTypes" "d"
WHERE
	DayOfMonth(CAST(CAST("d"."DateTimeValue" AS NVarChar(27)) AS Timestamp)) > 0

