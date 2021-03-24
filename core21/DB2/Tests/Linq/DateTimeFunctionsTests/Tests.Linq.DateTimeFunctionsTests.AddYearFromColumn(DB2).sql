BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."DateTimeValue" + Float("t"."SmallIntValue") Year
FROM
	"LinqDataTypes" "t"

