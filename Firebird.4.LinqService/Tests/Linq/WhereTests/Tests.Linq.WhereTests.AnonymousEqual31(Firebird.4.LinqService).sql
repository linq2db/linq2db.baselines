BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ParentID" = 2 AND "ch"."ChildID" = 21

