-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(Extract(year from "p"."DateTimeValue") || '-01-01 00:00:00' AS timestamp)
FROM
	"LinqDataTypes" "p"
WHERE
	Extract(day from CAST(Extract(year from "p"."DateTimeValue") || '-01-01 00:00:00' AS timestamp)) > 0

