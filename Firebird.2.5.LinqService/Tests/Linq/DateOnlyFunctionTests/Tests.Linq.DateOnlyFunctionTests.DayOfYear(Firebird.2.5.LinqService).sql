BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Extract(yearday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

