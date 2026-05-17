-- DB2 DB2.LUW DB2LUW

SELECT
	Extract(second from ("t"."DateTimeValue" + 41 SECOND))
FROM
	"LinqDataTypes" "t"

