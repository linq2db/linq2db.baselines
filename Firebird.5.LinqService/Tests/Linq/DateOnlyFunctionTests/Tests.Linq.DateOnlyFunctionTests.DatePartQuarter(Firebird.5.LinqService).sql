BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Extract(quarter from "t"."TransactionDate")
FROM
	"Transactions" "t"

