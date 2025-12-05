-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(LPad(Extract(year from "p"."DateTimeValue"), 4, '0') || '-10-01' AS timestamp)
FROM
	"LinqDataTypes" "p"

