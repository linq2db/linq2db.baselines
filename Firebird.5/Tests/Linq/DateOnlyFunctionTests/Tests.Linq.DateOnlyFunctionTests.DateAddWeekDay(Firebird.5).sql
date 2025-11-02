-- Firebird.5 Firebird4

SELECT
	DateAdd(Day, 1, "t"."TransactionDate")
FROM
	"Transactions" "t"

