BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	DATE("t"."DateTimeValue" + "t"."SmallIntValue" YEAR)
FROM
	"LinqDataTypes" "t"

