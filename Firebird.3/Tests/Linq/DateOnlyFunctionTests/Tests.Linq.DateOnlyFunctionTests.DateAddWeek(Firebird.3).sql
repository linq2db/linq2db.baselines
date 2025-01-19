BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateAdd(Day, -7, "t"."TransactionDate")
FROM
	"Transactions" "t"

