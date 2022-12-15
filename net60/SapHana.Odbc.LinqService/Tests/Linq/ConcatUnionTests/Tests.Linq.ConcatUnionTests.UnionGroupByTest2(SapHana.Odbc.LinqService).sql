BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."SmallIntValue",
	"_"."SmallIntValue",
	3
FROM
	"LinqDataTypes" "_"
UNION
SELECT
	"t1"."month_1",
	"t1"."year_1",
	1
FROM
	(
		SELECT
			Month("selectParam"."DateTimeValue") as "month_1",
			Year("selectParam"."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."month_1",
	"t1"."year_1"
UNION
SELECT
	Year("_1"."DateTimeValue"),
	Year("_1"."DateTimeValue"),
	2
FROM
	"LinqDataTypes" "_1"

