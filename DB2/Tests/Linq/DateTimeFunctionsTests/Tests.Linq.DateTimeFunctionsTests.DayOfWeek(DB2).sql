-- DB2 DB2.LUW DB2LUW

SELECT
	Mod(Trunc("t"."DateTimeValue") - Trunc("t"."DateTimeValue", 'IW') + 1, 7)
FROM
	"LinqDataTypes" "t"

