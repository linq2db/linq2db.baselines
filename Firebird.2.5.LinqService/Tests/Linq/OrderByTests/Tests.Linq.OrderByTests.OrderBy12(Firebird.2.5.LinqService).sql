BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
ORDER BY
	Mod("ch"."ChildID", 2) DESC

