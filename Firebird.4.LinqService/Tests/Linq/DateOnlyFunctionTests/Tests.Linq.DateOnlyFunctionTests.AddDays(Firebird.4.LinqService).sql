BeforeExecute
-- Firebird.4 Firebird4

SELECT
	DateAdd(Day, 5, "t"."TransactionDate")
FROM
	"Transactions" "t"

