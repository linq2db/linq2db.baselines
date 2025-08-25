BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

