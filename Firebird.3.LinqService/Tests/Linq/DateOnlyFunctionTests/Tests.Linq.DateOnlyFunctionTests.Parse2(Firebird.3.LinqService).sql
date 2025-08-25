BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	Extract(day from "d"."TransactionDate") > 0

