BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	DateAdd(Day, 1, "t"."TransactionDate")
FROM
	"Transactions" "t"

