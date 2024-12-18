BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"d"."Date_1"
FROM
	(
		SELECT
			Extract(day from "t"."DateTimeValue") as "Day_1",
			DATE("t"."DateTimeValue") as "Date_1"
		FROM
			"LinqDataTypes" "t"
	) "d"
WHERE
	"d"."Day_1" > 0 AND "d"."Day_1" IS NOT NULL

