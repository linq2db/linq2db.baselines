BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateAdd(Day, 1, "t"."TransactionDate")
FROM
	"Transactions" "t"

