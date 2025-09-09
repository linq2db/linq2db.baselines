BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST(Extract(year from "t"."DateTimeValue") || '-01-01 00:20:00' AS timestamp)
FROM
	"LinqDataTypes" "t"

