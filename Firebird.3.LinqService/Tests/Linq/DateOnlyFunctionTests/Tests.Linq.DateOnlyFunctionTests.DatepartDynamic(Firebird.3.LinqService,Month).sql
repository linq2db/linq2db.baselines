BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(month from "t"."TransactionDate")
FROM
	"Transactions" "t"

