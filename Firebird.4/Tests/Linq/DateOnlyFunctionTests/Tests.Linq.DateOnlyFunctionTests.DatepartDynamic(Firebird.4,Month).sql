-- Firebird.4 Firebird4

SELECT
	Extract(month from "t"."TransactionDate")
FROM
	"Transactions" "t"

