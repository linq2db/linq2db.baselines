BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Days("t"."TransactionDate", 3)
FROM
	"Transactions" "t"

