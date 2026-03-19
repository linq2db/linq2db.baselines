-- Firebird.5 Firebird4

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "t1",
	"Child" "ch"
WHERE
	"t1"."ParentID" = "ch"."ParentID"

