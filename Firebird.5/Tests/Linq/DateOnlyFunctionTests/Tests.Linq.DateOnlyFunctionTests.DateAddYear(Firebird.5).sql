BeforeExecute
-- Firebird.5 Firebird4

SELECT
	DateAdd(Year, 12, "t"."TransactionDate")
FROM
	"Transactions" "t"

