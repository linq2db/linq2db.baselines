BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ChildID"
FROM
	(
		SELECT
			"selectParam"."ParentID" + 1 as "c1",
			"selectParam"."ChildID"
		FROM
			"GrandChild" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1",
	"t1"."ChildID"

