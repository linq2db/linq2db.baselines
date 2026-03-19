-- Firebird.3 Firebird3

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "t1",
	"Child" "ch"
WHERE
	"t1"."ParentID" = "ch"."ParentID"

