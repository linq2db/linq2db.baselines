-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."SmallIntValue",
	"t1"."SmallIntValue",
	CAST(3 AS Integer)
FROM
	"LinqDataTypes" "t1"
UNION
SELECT
	"t3"."month_1",
	"t3"."year_1",
	CAST(1 AS Integer)
FROM
	(
		SELECT DISTINCT
			Month("t2"."DateTimeValue") as "month_1",
			Year("t2"."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" "t2"
	) "t3"
UNION
SELECT
	Year("t4"."DateTimeValue"),
	Year("t4"."DateTimeValue"),
	CAST(2 AS Integer)
FROM
	"LinqDataTypes" "t4"

