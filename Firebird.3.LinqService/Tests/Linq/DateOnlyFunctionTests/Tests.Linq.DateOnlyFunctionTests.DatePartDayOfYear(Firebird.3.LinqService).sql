BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(yearday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

