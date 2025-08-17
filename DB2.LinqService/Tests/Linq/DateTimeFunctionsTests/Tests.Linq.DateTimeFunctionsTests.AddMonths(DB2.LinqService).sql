BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	DATE("t"."DateTimeValue" + -2 MONTH)
FROM
	"LinqDataTypes" "t"

