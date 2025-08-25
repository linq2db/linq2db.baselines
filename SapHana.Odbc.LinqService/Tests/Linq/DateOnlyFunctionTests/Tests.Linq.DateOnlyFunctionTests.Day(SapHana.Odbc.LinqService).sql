BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	DayOfMonth("t"."TransactionDate")
FROM
	"Transactions" "t"

