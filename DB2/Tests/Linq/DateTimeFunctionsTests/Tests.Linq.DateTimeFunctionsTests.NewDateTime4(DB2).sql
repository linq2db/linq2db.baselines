-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(LPad(Extract(year from "p"."DateTimeValue"), 4, '0') || '-10-01 20:35:44.000' AS timestamp)
FROM
	"LinqDataTypes" "p"

