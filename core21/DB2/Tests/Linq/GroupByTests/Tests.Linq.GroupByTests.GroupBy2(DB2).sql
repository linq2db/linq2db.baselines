BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			Coalesce("selectParam"."Value1", "c_1"."ChildID") as "c1"
		FROM
			"Parent" "selectParam"
				INNER JOIN "Child" "c_1" ON "selectParam"."ParentID" = "c_1"."ParentID"
	) "t1"
GROUP BY
	"t1"."c1"

