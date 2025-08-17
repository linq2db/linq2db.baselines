BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	(Extract(Month from "t"."TransactionDate") - 1) / 3 + 1
FROM
	"Transactions" "t"

