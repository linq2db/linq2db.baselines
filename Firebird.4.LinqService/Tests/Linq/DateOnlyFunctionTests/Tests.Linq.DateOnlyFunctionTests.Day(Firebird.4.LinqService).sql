BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

