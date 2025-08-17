BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	DateAdd(Day, 5, "t"."TransactionDate")
FROM
	"Transactions" "t"

