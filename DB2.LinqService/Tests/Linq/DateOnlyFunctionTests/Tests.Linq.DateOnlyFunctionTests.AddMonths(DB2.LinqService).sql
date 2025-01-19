BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."TransactionDate" + -2 MONTH
FROM
	"Transactions" "t"

