BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ParentID" = 2 AND "ch"."ChildID" = 21

