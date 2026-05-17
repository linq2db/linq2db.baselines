-- DB2 DB2.LUW DB2LUW

SELECT
	Mod(Extract(hour from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

