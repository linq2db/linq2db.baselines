-- Firebird.2.5 Firebird

SELECT
	DateAdd(Day, 5, "t"."TransactionDate")
FROM
	"Transactions" "t"

