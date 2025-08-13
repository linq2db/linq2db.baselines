BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	Extract(day from "d"."TransactionDate") > 0

