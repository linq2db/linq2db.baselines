BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateAdd(Day, 5, "t"."TransactionDate")
FROM
	"Transactions" "t"

