-- DB2 DB2.LUW DB2LUW

SELECT
	Mod(Extract(minute from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

