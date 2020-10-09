BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."DateTimeValue" + ("t"."SmallIntValue" * 3) Month
FROM
	"LinqDataTypes" "t"

