BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST(LPad(Extract(year from "t"."DateTimeValue"), 4, '0') || '-10-01 20:35:44.000' AS timestamp)
FROM
	"LinqDataTypes" "t"

