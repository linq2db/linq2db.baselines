BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Extract(second from ("t"."DateTimeValue" + -35 SECOND))
FROM
	"LinqDataTypes" "t"

