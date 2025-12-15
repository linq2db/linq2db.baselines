-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Days("t"."TransactionDate", 1)
FROM
	"Transactions" "t"

