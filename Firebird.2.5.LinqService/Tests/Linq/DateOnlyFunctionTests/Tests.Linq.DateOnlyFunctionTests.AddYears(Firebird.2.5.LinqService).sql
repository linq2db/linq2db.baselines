BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateAdd(Year, 12, "t"."TransactionDate")
FROM
	"Transactions" "t"

