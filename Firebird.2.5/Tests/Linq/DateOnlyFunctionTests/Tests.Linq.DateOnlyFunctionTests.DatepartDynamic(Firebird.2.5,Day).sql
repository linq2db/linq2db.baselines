BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

