BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Days("t"."TransactionDate", 1)
FROM
	"Transactions" "t"

