BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."TransactionDate" + -3 MONTH
FROM
	"Transactions" "t"

