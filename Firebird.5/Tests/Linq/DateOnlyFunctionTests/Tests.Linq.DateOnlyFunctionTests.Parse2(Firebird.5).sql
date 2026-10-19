-- Firebird.5 Firebird4
SELECT
	CAST("d"."TransactionDate" AS Date)
FROM
	"Transactions" "d"
WHERE
	Extract(day from CAST("d"."TransactionDate" AS Date)) > 0

