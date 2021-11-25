BeforeExecute
-- Firebird

SELECT
	"t1"."month_1",
	"t1"."year_1",
	"t1"."int_1"
FROM
	(
		SELECT
			Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int) as "month_1",
			Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as "year_1",
			1 as "int_1"
		FROM
			"LinqDataTypes" "selectParam"
		GROUP BY
			Cast(Floor(Extract(month from "selectParam"."DateTimeValue")) as int),
			Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int)
	) "t1"
UNION
SELECT
	"t2"."SmallIntValue",
	"t2"."SmallIntValue",
	3
FROM
	"LinqDataTypes" "t2"
UNION
SELECT
	Cast(Floor(Extract(year from "t3"."DateTimeValue")) as int),
	Cast(Floor(Extract(year from "t3"."DateTimeValue")) as int),
	2
FROM
	"LinqDataTypes" "t3"

BeforeExecute
-- Firebird

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

