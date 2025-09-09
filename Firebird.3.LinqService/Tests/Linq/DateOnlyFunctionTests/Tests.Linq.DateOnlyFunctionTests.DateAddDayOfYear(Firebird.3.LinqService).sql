BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	DateAdd(Day, 3, "t"."TransactionDate")
FROM
	"Transactions" "t"

