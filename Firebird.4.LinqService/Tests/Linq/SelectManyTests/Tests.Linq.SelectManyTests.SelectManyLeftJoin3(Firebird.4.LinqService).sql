BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p",
	"Child" "ch"
WHERE
	"p"."ParentID" = "ch"."ParentID"

