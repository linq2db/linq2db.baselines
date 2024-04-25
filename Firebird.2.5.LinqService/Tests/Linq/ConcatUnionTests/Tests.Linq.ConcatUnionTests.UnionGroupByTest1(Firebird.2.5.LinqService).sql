BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t2"."Month_1",
	"t2"."Year_1",
	1
FROM
	(
		SELECT
			Extract(month from "t1"."DateTimeValue") as "Month_1",
			Extract(year from "t1"."DateTimeValue") as "Year_1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"
GROUP BY
	"t2"."Month_1",
	"t2"."Year_1"
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

