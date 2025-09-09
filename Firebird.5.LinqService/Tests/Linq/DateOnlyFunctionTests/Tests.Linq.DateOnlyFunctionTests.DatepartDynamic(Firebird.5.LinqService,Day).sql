BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

