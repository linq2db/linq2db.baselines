BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Months("t"."TransactionDate", -3)
FROM
	"Transactions" "t"

