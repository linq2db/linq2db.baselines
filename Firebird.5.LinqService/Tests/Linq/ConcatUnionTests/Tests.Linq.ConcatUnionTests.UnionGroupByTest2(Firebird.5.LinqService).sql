BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t2"."month_1",
	"t2"."month_1",
	"t2"."int_1"
FROM
	(
		SELECT
			"t1"."SmallIntValue" as "month_1",
			3 as "int_1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"
UNION
SELECT
	"t4"."month_1",
	"t4"."year_1",
	1
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
	2
FROM
	"LinqDataTypes" "t5"

