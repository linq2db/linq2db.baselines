BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Max("t1"."ChildID"), 
	Max("t1"."ChildID" + "t1"."ParentID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

