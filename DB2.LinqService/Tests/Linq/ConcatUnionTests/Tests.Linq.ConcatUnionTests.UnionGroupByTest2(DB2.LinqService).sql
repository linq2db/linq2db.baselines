BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t2"."year_1",
	"t2"."year_1",
	"t2"."int_1"
FROM
	(
		SELECT
			"t1"."SmallIntValue" as "year_1",
			CAST(3 AS Int) as "int_1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"
UNION
SELECT
	"t4"."month_1",
	"t4"."year_1",
	CAST(1 AS Int)
FROM
	(
		SELECT
			Extract(month from "t3"."DateTimeValue") as "month_1",
			Extract(year from "t3"."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" "t3"
	) "t4"
GROUP BY
	"t4"."month_1",
	"t4"."year_1"
UNION
SELECT
	Extract(year from "t5"."DateTimeValue"),
	Extract(year from "t5"."DateTimeValue"),
	CAST(2 AS Int)
FROM
	"LinqDataTypes" "t5"

