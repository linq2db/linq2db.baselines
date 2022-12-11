BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"selectParam"."ChildID",
	Avg("selectParam"."ParentID")
FROM
	"Child" "selectParam"
GROUP BY
	"selectParam"."ChildID"

