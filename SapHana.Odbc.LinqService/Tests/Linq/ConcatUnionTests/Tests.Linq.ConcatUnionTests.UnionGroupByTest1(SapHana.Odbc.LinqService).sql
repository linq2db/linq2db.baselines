BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t2"."Month_1",
	"t2"."Year_1",
	1
FROM
	(
		SELECT
			Month("t1"."DateTimeValue") as "Month_1",
			Year("t1"."DateTimeValue") as "Year_1"
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
	Year("t4"."DateTimeValue"),
	Year("t4"."DateTimeValue"),
	2
FROM
	"LinqDataTypes" "t4"

