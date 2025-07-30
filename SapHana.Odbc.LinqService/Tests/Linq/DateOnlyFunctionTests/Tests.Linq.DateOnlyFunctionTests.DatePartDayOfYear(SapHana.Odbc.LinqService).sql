BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	DayOfYear("t"."TransactionDate")
FROM
	"Transactions" "t"

