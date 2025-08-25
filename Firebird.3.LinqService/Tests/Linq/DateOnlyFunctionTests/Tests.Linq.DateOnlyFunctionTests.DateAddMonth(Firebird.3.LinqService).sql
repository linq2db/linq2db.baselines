BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	DateAdd(Month, 2, "t"."TransactionDate")
FROM
	"Transactions" "t"

