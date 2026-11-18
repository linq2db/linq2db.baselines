-- SapHana.Native SapHana
SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	DayOfMonth("d"."TransactionDate") > 0

