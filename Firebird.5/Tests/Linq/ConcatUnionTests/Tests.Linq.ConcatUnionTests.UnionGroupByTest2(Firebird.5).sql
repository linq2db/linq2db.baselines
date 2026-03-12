-- Firebird.5 Firebird4

SELECT
	"t1"."SmallIntValue",
	"t1"."SmallIntValue",
	CAST(3 AS Int)
FROM
	"LinqDataTypes" "t1"
UNION
SELECT
	"t3"."month_1",
	"t3"."year_1",
	CAST(1 AS Int)
FROM
	(
		SELECT DISTINCT
			Extract(month from "t2"."DateTimeValue") as "month_1",
			Extract(year from "t2"."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" "t2"
	) "t3"
UNION
SELECT
	Extract(year from "t4"."DateTimeValue"),
	Extract(year from "t4"."DateTimeValue"),
	CAST(2 AS Int)
FROM
	"LinqDataTypes" "t4"

