BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateAdd(Day, 3, "t"."TransactionDate")
FROM
	"Transactions" "t"

