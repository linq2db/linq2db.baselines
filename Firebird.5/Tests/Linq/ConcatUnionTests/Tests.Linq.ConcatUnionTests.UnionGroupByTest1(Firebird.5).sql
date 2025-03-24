﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"t2"."month_1",
	"t2"."year_1",
	CAST(1 AS Int)
FROM
	(
		SELECT
			Extract(month from "t1"."DateTimeValue") as "month_1",
			Extract(year from "t1"."DateTimeValue") as "year_1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"
GROUP BY
	"t2"."month_1",
	"t2"."year_1"
UNION
SELECT
	"t3"."SmallIntValue",
	"t3"."SmallIntValue",
	CAST(3 AS Int)
FROM
	"LinqDataTypes" "t3"
UNION
SELECT
	Extract(year from "t4"."DateTimeValue"),
	Extract(year from "t4"."DateTimeValue"),
	CAST(2 AS Int)
FROM
	"LinqDataTypes" "t4"

