-- Firebird.3 Firebird3

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

