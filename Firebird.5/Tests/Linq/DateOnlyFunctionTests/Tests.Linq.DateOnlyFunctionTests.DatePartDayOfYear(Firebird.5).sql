-- Firebird.5 Firebird4

SELECT
	Extract(yearday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

