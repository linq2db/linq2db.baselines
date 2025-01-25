BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	DayOfMonth("d"."TransactionDate") > 0

