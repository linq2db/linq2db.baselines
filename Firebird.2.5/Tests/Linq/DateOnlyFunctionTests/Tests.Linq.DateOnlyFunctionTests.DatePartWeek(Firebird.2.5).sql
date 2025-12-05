-- Firebird.2.5 Firebird

SELECT
	Extract(week from "t"."TransactionDate")
FROM
	"Transactions" "t"

