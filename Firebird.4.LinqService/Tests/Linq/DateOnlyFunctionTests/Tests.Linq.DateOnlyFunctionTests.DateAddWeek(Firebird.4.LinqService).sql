BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	DateAdd(Day, -7, "t"."TransactionDate")
FROM
	"Transactions" "t"

