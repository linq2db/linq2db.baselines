BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "c_1"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
FETCH NEXT 1 ROWS ONLY

