BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	DayOfYear("t"."TransactionDate")
FROM
	"Transactions" "t"

