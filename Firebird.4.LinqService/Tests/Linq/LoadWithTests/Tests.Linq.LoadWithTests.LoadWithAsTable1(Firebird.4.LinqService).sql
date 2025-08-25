BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t"."ParentID",
	"t"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "t"
		LEFT JOIN "Parent" "a_Parent" ON "t"."ParentID" = "a_Parent"."ParentID"
FETCH NEXT 1 ROWS ONLY

