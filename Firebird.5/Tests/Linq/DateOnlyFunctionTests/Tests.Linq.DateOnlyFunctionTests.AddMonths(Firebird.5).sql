BeforeExecute
-- Firebird.5 Firebird4

SELECT
	DateAdd(Month, -2, "t"."TransactionDate")
FROM
	"Transactions" "t"

