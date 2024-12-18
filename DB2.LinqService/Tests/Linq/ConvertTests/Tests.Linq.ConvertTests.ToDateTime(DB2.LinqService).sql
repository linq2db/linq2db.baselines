BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Day_2"
FROM
	(
		SELECT
			Extract(day from CAST(Extract(year from "t"."DateTimeValue") || '-01-01 00:00:00' AS timestamp)) as "Day_1",
			CAST(Extract(year from "t"."DateTimeValue") || '-01-01 00:00:00' AS timestamp) as "Day_2"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	"p"."Day_1" > 0 AND "p"."Day_1" IS NOT NULL

