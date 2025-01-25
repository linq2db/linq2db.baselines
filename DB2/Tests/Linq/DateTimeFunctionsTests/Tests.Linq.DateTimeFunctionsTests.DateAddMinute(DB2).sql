BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Extract(minute from ("t"."DateTimeValue" + 5 MINUTE))
FROM
	"LinqDataTypes" "t"

