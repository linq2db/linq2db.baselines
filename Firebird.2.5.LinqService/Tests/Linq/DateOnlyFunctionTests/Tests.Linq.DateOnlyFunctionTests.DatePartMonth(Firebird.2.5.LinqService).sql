BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Extract(month from "t"."TransactionDate")
FROM
	"Transactions" "t"

