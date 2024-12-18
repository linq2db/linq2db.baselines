BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"d"."Day_2"
FROM
	(
		SELECT
			Extract(day from CAST(Extract(year from "t"."DateTimeValue") || '-02-24 00:00:00' AS timestamp)) as "Day_1",
			CAST(Extract(year from "t"."DateTimeValue") || '-02-24 00:00:00' AS timestamp) as "Day_2"
		FROM
			"LinqDataTypes" "t"
	) "d"
WHERE
	"d"."Day_1" > 0 AND "d"."Day_1" IS NOT NULL

