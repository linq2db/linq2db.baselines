BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateAdd(Day, -7, "t"."TransactionDate")
FROM
	"Transactions" "t"

