BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Extract(year from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(month from CAST(LPad(Extract(year from "t"."DateTimeValue") + 1, 4, '0') || '-10-01' AS timestamp)) = 10

