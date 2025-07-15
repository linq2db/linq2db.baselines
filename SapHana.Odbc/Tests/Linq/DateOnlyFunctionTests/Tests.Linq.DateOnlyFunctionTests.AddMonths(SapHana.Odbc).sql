BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Months("t"."TransactionDate", -2)
FROM
	"Transactions" "t"

