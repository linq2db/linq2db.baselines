BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Extract(yearday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

