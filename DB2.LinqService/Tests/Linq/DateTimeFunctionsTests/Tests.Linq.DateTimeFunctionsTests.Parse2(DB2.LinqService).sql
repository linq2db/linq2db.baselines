BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(Extract(year from "d"."DateTimeValue") || '-02-24 00:00:00' AS timestamp)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from CAST(Extract(year from "d"."DateTimeValue") || '-02-24 00:00:00' AS timestamp)) > 0

