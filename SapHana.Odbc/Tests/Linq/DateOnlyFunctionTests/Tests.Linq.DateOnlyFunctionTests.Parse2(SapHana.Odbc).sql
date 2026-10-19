-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST("d"."TransactionDate" AS NVarChar(10)) AS Date)
FROM
	"Transactions" "d"
WHERE
	DayOfMonth(CAST(CAST("d"."TransactionDate" AS NVarChar(10)) AS Date)) > 0

