BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Extract(weekday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

