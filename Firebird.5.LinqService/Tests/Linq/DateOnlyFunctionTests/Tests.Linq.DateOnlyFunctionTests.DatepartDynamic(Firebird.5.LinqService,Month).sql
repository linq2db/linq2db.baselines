BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Extract(month from "t"."TransactionDate")
FROM
	"Transactions" "t"

