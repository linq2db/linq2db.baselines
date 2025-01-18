BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Extract(month from "t"."TransactionDate")
FROM
	"Transactions" "t"

