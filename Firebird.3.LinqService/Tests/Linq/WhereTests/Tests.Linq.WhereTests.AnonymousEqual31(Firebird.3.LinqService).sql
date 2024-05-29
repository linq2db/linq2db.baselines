BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ParentID" = 2 AND "ch"."ChildID" = 21

