BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"child_1"."ParentID",
	"child_1"."ChildID"
FROM
	"Child" "child_1"
WHERE
	"child_1"."ChildID" = -1

