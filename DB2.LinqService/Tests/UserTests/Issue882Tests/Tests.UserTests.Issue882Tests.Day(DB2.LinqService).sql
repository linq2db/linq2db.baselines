BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	Mod(Extract(day from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

