-- DB2 DB2.LUW DB2LUW
SELECT
	"p"."ParentID",
	"c_1"."ChildID",
	"c_1"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "p"."ParentID"
WHERE
	"p"."ParentID" = 5

