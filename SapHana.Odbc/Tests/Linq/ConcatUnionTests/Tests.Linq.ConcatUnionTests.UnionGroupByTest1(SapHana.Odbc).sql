BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t2"."Month_1",
	"t2"."Year_1",
	CAST(1 AS Integer)
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
	CAST(3 AS Integer)
FROM
	"LinqDataTypes" "t3"
UNION
SELECT
	Year("t4"."DateTimeValue"),
	Year("t4"."DateTimeValue"),
	CAST(2 AS Integer)
FROM
	"LinqDataTypes" "t4"

