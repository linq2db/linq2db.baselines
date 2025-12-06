-- Firebird.2.5 Firebird

SELECT
	Extract(month from "t"."TransactionDate")
FROM
	"Transactions" "t"

