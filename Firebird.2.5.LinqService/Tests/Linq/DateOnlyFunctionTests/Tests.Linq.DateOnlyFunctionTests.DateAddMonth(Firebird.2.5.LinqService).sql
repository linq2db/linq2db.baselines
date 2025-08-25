BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateAdd(Month, 2, "t"."TransactionDate")
FROM
	"Transactions" "t"

