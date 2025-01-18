BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateAdd(Day, 1, "t"."TransactionDate")
FROM
	"Transactions" "t"

