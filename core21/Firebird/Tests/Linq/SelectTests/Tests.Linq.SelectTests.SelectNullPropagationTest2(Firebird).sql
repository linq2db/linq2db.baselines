BeforeExecute
-- Firebird

SELECT
	"gr"."ParentID",
	"gr"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "gr"
			LEFT JOIN "Parent" "a_Parent" ON "gr"."ParentID" = "a_Parent"."ParentID"
		ON "p"."Value1" = "gr"."ParentID"

