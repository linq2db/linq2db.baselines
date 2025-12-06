-- Firebird.4 Firebird4

SELECT
	DateAdd(Day, -7, "t"."TransactionDate")
FROM
	"Transactions" "t"

