-- DB2 DB2.LUW DB2LUW

SELECT
	"d"."TransactionDate"
FROM
	"Transactions" "d"
WHERE
	Extract(day from "d"."TransactionDate") > 0

