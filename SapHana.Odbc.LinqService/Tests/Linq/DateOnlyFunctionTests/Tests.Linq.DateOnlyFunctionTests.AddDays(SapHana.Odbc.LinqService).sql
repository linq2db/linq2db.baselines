BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Days("t"."TransactionDate", 5)
FROM
	"Transactions" "t"

