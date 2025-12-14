-- Firebird.2.5 Firebird

SELECT
	(Extract(Month from "t"."TransactionDate") - 1) / 3 + 1
FROM
	"Transactions" "t"

