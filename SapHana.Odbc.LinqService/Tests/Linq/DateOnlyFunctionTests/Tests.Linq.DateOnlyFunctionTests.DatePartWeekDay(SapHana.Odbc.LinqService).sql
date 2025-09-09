BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	Mod(Weekday("t"."TransactionDate") + 1, 7) + 1
FROM
	"Transactions" "t"

