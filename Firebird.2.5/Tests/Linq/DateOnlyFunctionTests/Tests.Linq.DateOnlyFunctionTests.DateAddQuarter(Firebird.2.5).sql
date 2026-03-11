-- Firebird.2.5 Firebird

SELECT
	DateAdd(Month, -3, "t"."TransactionDate")
FROM
	"Transactions" "t"

