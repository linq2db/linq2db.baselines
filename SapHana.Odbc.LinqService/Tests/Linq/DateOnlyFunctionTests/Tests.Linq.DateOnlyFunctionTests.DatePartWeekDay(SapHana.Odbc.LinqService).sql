BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Mod(Weekday("t"."TransactionDate") + 1, 7) + 1
FROM
	"Transactions" "t"

