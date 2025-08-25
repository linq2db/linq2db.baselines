BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Extract(year from "t"."TransactionDate")
FROM
	"Transactions" "t"

