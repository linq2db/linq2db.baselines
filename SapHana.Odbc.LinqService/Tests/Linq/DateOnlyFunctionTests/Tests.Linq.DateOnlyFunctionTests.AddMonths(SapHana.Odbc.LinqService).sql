BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Add_Months("t"."TransactionDate", -2)
FROM
	"Transactions" "t"

