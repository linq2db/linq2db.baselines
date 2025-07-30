BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	DATE("d"."DateTimeValue")
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from "d"."DateTimeValue") > 0

