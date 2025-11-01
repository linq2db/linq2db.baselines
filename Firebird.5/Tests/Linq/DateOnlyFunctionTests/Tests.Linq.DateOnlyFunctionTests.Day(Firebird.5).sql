-- Firebird.5 Firebird4

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

