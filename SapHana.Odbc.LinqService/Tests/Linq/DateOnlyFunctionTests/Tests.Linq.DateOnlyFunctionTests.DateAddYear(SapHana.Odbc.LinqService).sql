BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Years("t"."TransactionDate", 12)
FROM
	"Transactions" "t"

