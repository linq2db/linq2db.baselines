BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateAdd(Month, -2, "t"."TransactionDate")
FROM
	"Transactions" "t"

