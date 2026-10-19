-- Firebird.2.5 Firebird
SELECT
	CAST("d"."TransactionDate" AS Date)
FROM
	"Transactions" "d"
WHERE
	Extract(day from CAST("d"."TransactionDate" AS Date)) > 0

