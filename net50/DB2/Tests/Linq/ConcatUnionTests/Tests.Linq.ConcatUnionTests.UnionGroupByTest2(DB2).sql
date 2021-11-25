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
	"t1"."c1",
	"t1"."c2",
	"t1"."int_1"
FROM
	(
		SELECT
			To_Number(To_Char("selectParam"."DateTimeValue", 'MM')) as "c1",
			To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')) as "c2",
			1 as "int_1"
		FROM
			"LinqDataTypes" "selectParam"
		GROUP BY
			To_Number(To_Char("selectParam"."DateTimeValue", 'MM')),
			To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY'))
	) "t1"
UNION
SELECT
	To_Number(To_Char("_1"."DateTimeValue", 'YYYY')),
	To_Number(To_Char("_1"."DateTimeValue", 'YYYY')),
	2
FROM
	"LinqDataTypes" "_1"

