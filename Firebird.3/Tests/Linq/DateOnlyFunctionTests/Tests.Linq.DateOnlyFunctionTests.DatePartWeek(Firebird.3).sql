-- Firebird.3 Firebird3

SELECT
	Extract(week from "t"."TransactionDate")
FROM
	"Transactions" "t"

