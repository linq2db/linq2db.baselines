BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*),
	Sum("t1"."ChildID"),
	Min("t1"."ChildID"),
	Max("t1"."ChildID"),
	Avg("t1"."ChildID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

