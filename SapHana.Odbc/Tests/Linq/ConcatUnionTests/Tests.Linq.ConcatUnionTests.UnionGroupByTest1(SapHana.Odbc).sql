BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Month_1",
	"t1"."Year_1",
	1
FROM
	(
		SELECT
			Month("_"."DateTimeValue") as "Month_1",
			Year("_"."DateTimeValue") as "Year_1"
		FROM
			"LinqDataTypes" "_"
	) "t1"
GROUP BY
	"t1"."Month_1",
	"t1"."Year_1"
UNION
SELECT
	"_1"."SmallIntValue",
	"_1"."SmallIntValue",
	3
FROM
	"LinqDataTypes" "_1"
UNION
SELECT
	Year("_2"."DateTimeValue"),
	Year("_2"."DateTimeValue"),
	2
FROM
	"LinqDataTypes" "_2"

