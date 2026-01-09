-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(RTrim(Char(Extract(hour from "t"."DateTimeValue"))) || ':01:01' AS Time)
FROM
	"LinqDataTypes" "t"

