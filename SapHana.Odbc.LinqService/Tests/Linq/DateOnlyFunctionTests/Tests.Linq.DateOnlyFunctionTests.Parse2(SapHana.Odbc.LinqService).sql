BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	DayOfMonth("d"."TransactionDate") > 0

