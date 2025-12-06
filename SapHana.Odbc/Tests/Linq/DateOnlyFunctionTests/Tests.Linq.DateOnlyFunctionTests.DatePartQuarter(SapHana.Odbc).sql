-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor((Month("t"."TransactionDate") - 1) / 3) + 1
FROM
	"Transactions" "t"

