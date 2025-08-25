BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	DateAdd(Month, -2, "t"."TransactionDate")
FROM
	"Transactions" "t"

