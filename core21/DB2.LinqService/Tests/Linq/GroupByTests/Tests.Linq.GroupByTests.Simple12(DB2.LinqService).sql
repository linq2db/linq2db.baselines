BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"selectParam"."ChildID"
FROM
	"GrandChild" "selectParam"
GROUP BY
	"selectParam"."ParentID" + 1,
	"selectParam"."ChildID"

