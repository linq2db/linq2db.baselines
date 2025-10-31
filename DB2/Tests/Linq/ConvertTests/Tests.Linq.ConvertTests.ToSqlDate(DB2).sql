-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(Extract(year from "t"."DateTimeValue") || '-01-01' AS Date)
FROM
	"LinqDataTypes" "t"

