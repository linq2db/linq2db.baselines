BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

