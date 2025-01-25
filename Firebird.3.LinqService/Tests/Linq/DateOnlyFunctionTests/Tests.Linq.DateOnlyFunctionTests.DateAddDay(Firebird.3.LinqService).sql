BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateAdd(Day, 5, "t"."TransactionDate")
FROM
	"Transactions" "t"

