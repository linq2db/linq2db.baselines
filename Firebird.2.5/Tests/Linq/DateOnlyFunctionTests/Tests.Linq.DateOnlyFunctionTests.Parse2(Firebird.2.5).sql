BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	Extract(day from "d"."TransactionDate") > 0

