-- Firebird.2.5 Firebird

SELECT
	Extract(yearday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

