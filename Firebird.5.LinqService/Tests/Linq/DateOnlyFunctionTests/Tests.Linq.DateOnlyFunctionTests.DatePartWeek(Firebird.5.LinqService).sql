BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Extract(week from "t"."TransactionDate")
FROM
	"Transactions" "t"

