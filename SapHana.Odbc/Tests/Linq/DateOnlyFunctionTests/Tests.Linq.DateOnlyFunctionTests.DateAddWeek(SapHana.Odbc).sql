BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Days("t"."TransactionDate", -7)
FROM
	"Transactions" "t"

