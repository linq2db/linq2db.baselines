BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(week from "t"."TransactionDate")
FROM
	"Transactions" "t"

