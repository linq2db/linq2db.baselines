BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	DateAdd(Month, -3, "t"."TransactionDate")
FROM
	"Transactions" "t"

