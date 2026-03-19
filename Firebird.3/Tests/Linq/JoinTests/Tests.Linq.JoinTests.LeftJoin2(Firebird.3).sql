-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1",
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "ch" ON "t1"."ParentID" = "ch"."ParentID"

