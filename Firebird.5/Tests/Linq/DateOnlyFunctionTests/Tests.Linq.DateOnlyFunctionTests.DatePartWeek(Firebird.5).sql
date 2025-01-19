BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Extract(week from "t"."TransactionDate")
FROM
	"Transactions" "t"

