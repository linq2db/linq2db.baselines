BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t2"."month_1",
	"t2"."year_1",
	1
FROM
	(
		SELECT
			Extract(month from "t1"."DateTimeValue") as "month_1",
			Extract(year from "t1"."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"
GROUP BY
	"t2"."month_1",
	"t2"."year_1"
UNION
SELECT
	"t3"."SmallIntValue",
	"t3"."SmallIntValue",
	3
FROM
	"LinqDataTypes" "t3"
UNION
SELECT
	Extract(year from "t4"."DateTimeValue"),
	Extract(year from "t4"."DateTimeValue"),
	2
FROM
	"LinqDataTypes" "t4"

