BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
			Month("t3"."DateTimeValue") as "month_1",
			Year("t3"."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" "t3"
	) "t4"
GROUP BY
	"t4"."month_1",
	"t4"."year_1"
UNION
SELECT
	Year("t5"."DateTimeValue"),
	Year("t5"."DateTimeValue"),
	2
FROM
	"LinqDataTypes" "t5"

