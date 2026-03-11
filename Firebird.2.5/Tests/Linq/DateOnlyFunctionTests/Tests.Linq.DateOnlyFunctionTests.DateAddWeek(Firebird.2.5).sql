-- Firebird.2.5 Firebird

SELECT
	DateAdd(Day, -7, "t"."TransactionDate")
FROM
	"Transactions" "t"

