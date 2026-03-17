-- Firebird.3 Firebird3

SELECT
	Extract(yearday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

