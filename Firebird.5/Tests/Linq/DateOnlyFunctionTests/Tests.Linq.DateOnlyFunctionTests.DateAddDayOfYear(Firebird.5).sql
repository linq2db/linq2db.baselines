-- Firebird.5 Firebird4

SELECT
	DateAdd(Day, 3, "t"."TransactionDate")
FROM
	"Transactions" "t"

