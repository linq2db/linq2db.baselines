BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Extract(weekday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

