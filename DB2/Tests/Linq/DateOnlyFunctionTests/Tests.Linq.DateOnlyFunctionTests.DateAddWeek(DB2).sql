BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."TransactionDate" + -7 DAY
FROM
	"Transactions" "t"

