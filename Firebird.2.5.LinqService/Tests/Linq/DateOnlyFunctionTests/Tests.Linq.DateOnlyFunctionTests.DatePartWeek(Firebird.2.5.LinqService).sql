BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Extract(week from "t"."TransactionDate")
FROM
	"Transactions" "t"

