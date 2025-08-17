BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	DateAdd(Year, 12, "t"."TransactionDate")
FROM
	"Transactions" "t"

