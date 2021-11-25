BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"selectParam"."ChildID" + 1,
	Sum("selectParam"."ParentID")
FROM
	"Child" "selectParam"
GROUP BY
	"selectParam"."ChildID" + 1

