BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."TransactionDate" + -7 DAY
FROM
	"Transactions" "t"

