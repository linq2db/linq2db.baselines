-- Firebird.4 Firebird4

SELECT
	DateAdd(Day, 1, "t"."TransactionDate")
FROM
	"Transactions" "t"

