BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	(Extract(Month from "t"."TransactionDate") - 1) / 3 + 1
FROM
	"Transactions" "t"

