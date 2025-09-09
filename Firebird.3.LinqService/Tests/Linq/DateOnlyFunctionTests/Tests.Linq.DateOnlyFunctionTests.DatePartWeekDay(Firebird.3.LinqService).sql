BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(weekday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

