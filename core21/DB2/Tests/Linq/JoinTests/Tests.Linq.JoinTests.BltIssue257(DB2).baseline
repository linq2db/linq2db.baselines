BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c1",
	Count(*)
FROM
	(
		SELECT
			Date("selectParam"."DateTimeValue") as "c1"
		FROM
			"LinqDataTypes" "selectParam"
				INNER JOIN "Parent" "p" ON "selectParam".ID = "p"."ParentID"
	) "t1"
GROUP BY
	"t1"."c1"

