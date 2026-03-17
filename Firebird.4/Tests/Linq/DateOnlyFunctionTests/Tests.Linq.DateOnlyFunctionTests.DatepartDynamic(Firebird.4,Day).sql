-- Firebird.4 Firebird4

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

