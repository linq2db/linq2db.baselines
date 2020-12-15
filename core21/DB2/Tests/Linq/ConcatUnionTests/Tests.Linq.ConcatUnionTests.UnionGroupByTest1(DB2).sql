BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t3"."month_1",
	"t3"."year_1",
	"t3"."int_1"
FROM
	(
		SELECT
			"t2"."month_1",
			"t2"."year_1",
			"t2"."int_1"
		FROM
			(
				SELECT
					"t1"."c1" as "month_1",
					"t1"."c2" as "year_1",
					1 as "int_1"
				FROM
					(
						SELECT
							To_Number(To_Char("selectParam"."DateTimeValue", 'MM')) as "c1",
							To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')) as "c2"
						FROM
							"LinqDataTypes" "selectParam"
					) "t1"
				GROUP BY
					"t1"."c1",
					"t1"."c2"
			) "t2"
		UNION
		SELECT
			"_"."SmallIntValue" as "month_1",
			"_"."SmallIntValue" as "year_1",
			3 as "int_1"
		FROM
			"LinqDataTypes" "_"
	) "t3"
UNION
SELECT
	To_Number(To_Char("_1"."DateTimeValue", 'YYYY')),
	To_Number(To_Char("_1"."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" "_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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

