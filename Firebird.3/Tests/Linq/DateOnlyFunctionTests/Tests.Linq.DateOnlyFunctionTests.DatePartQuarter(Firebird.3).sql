-- Firebird.3 Firebird3

SELECT
	(Extract(Month from "t"."TransactionDate") - 1) / 3 + 1
FROM
	"Transactions" "t"

