-- Firebird.4 Firebird4

SELECT
	Extract(week from "t"."TransactionDate")
FROM
	"Transactions" "t"

