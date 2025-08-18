BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Days("t"."TransactionDate", -7)
FROM
	"Transactions" "t"

