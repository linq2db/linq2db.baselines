BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			To_Number(To_Char("selectParam"."DateTimeValue", 'YYYY')) as "c1"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1"

