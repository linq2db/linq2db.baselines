BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateAdd(Month, -3, "t"."TransactionDate")
FROM
	"Transactions" "t"

