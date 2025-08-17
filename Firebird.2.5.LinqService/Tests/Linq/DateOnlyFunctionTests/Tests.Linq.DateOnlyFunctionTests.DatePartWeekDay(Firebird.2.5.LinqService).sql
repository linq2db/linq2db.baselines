BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Extract(weekday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

