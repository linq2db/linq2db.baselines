BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	DateAdd(Month, -3, "t"."TransactionDate")
FROM
	"Transactions" "t"

