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
	"t1"."c1",
	"t1"."c2",
	"t1"."int_1"
FROM
	(
		SELECT
			Month("selectParam"."DateTimeValue") as "c1",
			Year("selectParam"."DateTimeValue") as "c2",
			1 as "int_1"
		FROM
			"LinqDataTypes" "selectParam"
		GROUP BY
			Month("selectParam"."DateTimeValue"),
			Year("selectParam"."DateTimeValue")
	) "t1"
UNION
SELECT
	Year("_1"."DateTimeValue"),
	Year("_1"."DateTimeValue"),
	2
FROM
	"LinqDataTypes" "_1"

