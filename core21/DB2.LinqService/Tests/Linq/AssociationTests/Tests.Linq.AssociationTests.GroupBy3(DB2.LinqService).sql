BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			To_Number(To_Char("a_Types"."DateTimeValue", 'YYYY')) as "c1"
		FROM
			"Parent" "selectParam"
				LEFT JOIN "LinqDataTypes" "a_Types" ON "selectParam"."ParentID" = "a_Types".ID
	) "t1"
GROUP BY
	"t1"."c1"

