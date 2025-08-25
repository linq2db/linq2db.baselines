BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."TransactionDate" + 1 DAY
FROM
	"Transactions" "t"

