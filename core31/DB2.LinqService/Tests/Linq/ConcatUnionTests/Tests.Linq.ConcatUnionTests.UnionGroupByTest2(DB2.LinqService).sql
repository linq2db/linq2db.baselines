BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."SmallIntValue",
	"_"."SmallIntValue",
	3
FROM
	"LinqDataTypes" "_"
UNION
SELECT
	"t2"."month_1",
	"t2"."year_1",
	"t2"."int_1"
FROM
	(
		SELECT
			"t1"."month_1",
			"t1"."year_1",
			1 as "int_1"
		FROM
			(
				SELECT
					To_Number(To_Char("selectParam"."DateTimeValue", 'MM')) as "month_1",
					To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')) as "year_1"
				FROM
					"LinqDataTypes" "selectParam"
			) "t1"
		GROUP BY
			"t1"."month_1",
			"t1"."year_1"
	) "t2"
UNION
SELECT
	To_Number(To_Char("_1"."DateTimeValue", 'YYYY')),
	To_Number(To_Char("_1"."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" "_1"

