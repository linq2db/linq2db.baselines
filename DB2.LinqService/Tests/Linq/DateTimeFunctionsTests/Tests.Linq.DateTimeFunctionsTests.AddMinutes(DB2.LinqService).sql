BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Extract(minute from ("t"."DateTimeValue" + -8 MINUTE))
FROM
	"LinqDataTypes" "t"

