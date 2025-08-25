BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Extract(hour from ("t"."DateTimeValue" + 22 HOUR))
FROM
	"LinqDataTypes" "t"

