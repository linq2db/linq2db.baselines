BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

