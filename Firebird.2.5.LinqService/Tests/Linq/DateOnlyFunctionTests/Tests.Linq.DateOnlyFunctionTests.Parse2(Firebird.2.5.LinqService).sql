BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	Extract(day from "d"."TransactionDate") > 0

