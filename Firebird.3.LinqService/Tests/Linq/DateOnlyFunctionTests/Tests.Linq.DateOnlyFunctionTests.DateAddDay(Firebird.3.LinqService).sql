BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	DateAdd(Day, 5, "t"."TransactionDate")
FROM
	"Transactions" "t"

