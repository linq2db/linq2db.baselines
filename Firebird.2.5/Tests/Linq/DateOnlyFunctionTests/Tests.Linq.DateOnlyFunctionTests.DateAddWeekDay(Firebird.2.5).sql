-- Firebird.2.5 Firebird

SELECT
	DateAdd(Day, 1, "t"."TransactionDate")
FROM
	"Transactions" "t"

