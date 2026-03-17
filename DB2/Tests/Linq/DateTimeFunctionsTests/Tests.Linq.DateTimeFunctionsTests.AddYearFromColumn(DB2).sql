-- DB2 DB2.LUW DB2LUW

SELECT
	DATE("t"."DateTimeValue" + "t"."SmallIntValue" YEAR)
FROM
	"LinqDataTypes" "t"

